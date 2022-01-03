//
//  VaildatorFactory.swift
//  
//
//  Created by Mukesh Shakya on 03/01/2022.
//

import Foundation

enum VaildatorFactory {
    
    static func validatorFor(type: ValidatorType) -> ValidatorConvertible {
        switch type {
        case .email: return EmailValidator()
        case .password(let type): return PasswordValidator(type)
        case .requiredField(let fieldName): return RequiredFieldValidator(fieldName)
        }
    }
    
}
