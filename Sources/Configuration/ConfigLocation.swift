//
//  File.swift
//  Utilities
//
//  Created by Roshan Balaji Nindrai SenthilNatha on 11/5/16.
//
//

import Foundation


/// Holds the information about configuration path
///
/// - Default: Looks thorough Document directory by default
/// - Custom:  Custom path appended to Config root path to look for configurations
public enum ConfigLocation {
    case Default
    case Custom(String)
}

public extension ConfigLocation {

    private struct Constants {
        static let CONFIGS = "Configs"
    }

    internal func getPath() -> [URL]?  {

        switch self {
            case .Default:
                return Bundle.main.urls(forResourcesWithExtension: "json", subdirectory: Constants.CONFIGS)
            case .Custom(let urlString):
                return Bundle.main.urls(forResourcesWithExtension: "json", subdirectory: Constants.CONFIGS+"/"+urlString)
        }

    }

}
