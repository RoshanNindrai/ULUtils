//
//  ULConfiguration.swift
//  Utilities
//
//  Created by Roshan Balaji Nindrai SenthilNatha on 11/5/16.
//
//

import Foundation

internal struct ConfigData {
    var data = [String:AnyObject]()


    /// Merges multiple json files from config folder
    ///
    /// - parameter newDataUrl: url to the json file
    ///
    /// - throws: Json parsing execption
    mutating func merge(_ newDataUrl : URL) throws {
        let data = try Data(contentsOf: newDataUrl)
        let parsedData = try JSONSerialization.jsonObject(with: data, options: .allowFragments) as! [String:AnyObject]
        self.data.merge(parsedData)
    }

    func value(key: String) -> AnyObject? {
        return (data as! NSDictionary).value(forKeyPath: key) as AnyObject?
    }

}


public struct Configuration {

    fileprivate static var defaultConfig = Configuration()

    fileprivate var configData = ConfigData()

    public var location : ConfigLocation {
        didSet {
            paths = location.getPath()
        }
    }

    fileprivate var paths : [URL]? {
        didSet {
            try? read()
        }
    }

    public init() {
        location = .Default
        paths = location.getPath()
        try? read()
    }

    public init(location: ConfigLocation) {
        self.location = location
        self.paths = self.location.getPath()
        try? read()
    }

}

extension Configuration {

    public static func dump() -> [String:AnyObject] {
        return defaultConfig.configData.data
    }

    internal mutating func read() throws {
        guard let jsonpaths = paths else {
            return
        }

        try jsonpaths.forEach { url in
            try configData.merge(url)
        }
    }

}

extension Configuration {

    public static func data(_ key: String) -> ConfigNode? {
        return ConfigNode(value: defaultConfig.configData.value(key: key))
    }

}

