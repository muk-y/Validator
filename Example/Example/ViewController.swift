//
//  ViewController.swift
//  Example
//
//  Created by ekmacmini43 on 03/01/2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let email = "abc"
        do {
            let _ = try email.validatedText(validationType: .email)
        } catch(let error) {
            let
            self.output?.obtained(error: (error as! ValidationError).message, source: (error as! ValidationError).type)
        }
    }


}

