//
//  ViewController.swift
//  Example
//
//  Created by ekmacmini43 on 03/01/2022.
//

import UIKit
import Validator

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let emailAddress = "abc"
        do {
            let _  = try emailAddress.validatedText(validationType: .number())
        } catch(let error) {
            if let error = error as? ValidationError {
                print("Error message: \(error.message)")
                print("Error type: \(error.type)")
            }
        }
    }


}

