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
            let _  = try emailAddress.validatedText(validationType: .email)
        } catch(let error as! ValidationError) {
            
//            self.output?.obtained(error: (error as! ValidationError).message, source: (error as! ValidationError).type)
        }
    }


}

