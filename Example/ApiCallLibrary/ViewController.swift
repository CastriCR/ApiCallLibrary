//
//  ViewController.swift
//  ApiCallLibrary
//
//  Created by Andres on 06/19/2021.
//  Copyright (c) 2021 Andres. All rights reserved.
//

import UIKit
import ApiCallLibrary

class ViewController: UIViewController {
    
    let llamado = Api()

    override func viewDidLoad() {
        super.viewDidLoad()
        if #available(iOS 11.0, *) {
            prueba()
        } else {
            print("no permitido")
        }
    }
    
    @available(iOS 11.0, *)
    func prueba() {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else { return }
     
        llamado.makeRequest(toURL: url, withHttpMethod: .get) { (results) in
            print(results)
        }
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

