//
//  String+Extension.swift
//  
//
//  Created by Mukesh Shakya on 03/01/2022.
//

import Foundation

public extension String {
    
    func validatedText(validationType: ValidatorType) throws -> String {
        let validator = VaildatorFactory.validatorFor(type: validationType)
        return try validator.validated(self)
    }
    
    func validatedPassword(_ type: PasswordType) throws -> String {
        let validator = VaildatorFactory.validatorFor(type: ValidatorType.password(type: type))
        return try validator.validated(self)
    }
    
}
