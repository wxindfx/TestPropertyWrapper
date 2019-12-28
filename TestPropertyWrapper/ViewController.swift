//
//  ViewController.swift
//  TestPropertyWrapper
//
//  Created by lucky.li on 2019/10/26.
//  Copyright © 2019 cico. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.test()
    }

    func test() {
        let value = Foo()
        print("test: \(value)")
        
        // Using codable cause compilation error;
        if let data = try? JSONEncoder().encode(value),
            let json = String.init(data: data, encoding: .utf8) {
            print(json)
        }
    }
}

