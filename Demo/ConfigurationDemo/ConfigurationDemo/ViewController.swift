//
//  ViewController.swift
//  ConfigurationDemo
//
//  Created by Roshan Balaji Nindrai SenthilNatha on 11/5/16.
//  Copyright © 2016 uniqlabs. All rights reserved.
//

import UIKit
import Utilities

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print(Configuration.dump())
        print(Configuration.data("key1")?.string())
        print(Configuration.data("bool1")?.bool())
        print(Configuration.data("object.hola")?.object())
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

