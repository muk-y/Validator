//
//  ValidatorType.swift
//  
//
//  Created by Mukesh Shakya on 03/01/2022.
//

import Foundation

enum ValidatorType {
    
    case email
    case password(type: PasswordType)
    case requiredField(field: String)

}
