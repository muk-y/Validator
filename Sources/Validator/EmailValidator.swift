//
//  EmailValidator.swift
//  
//
//  Created by Mukesh Shakya on 03/01/2022.
//

import Foundation

struct EmailValidator: ValidatorConvertible {
    
    func validated(_ value: String) throws -> String {
        guard !value.isEmpty else {throw ValidationError(GlobalConstants.text_email_empty, type: "email")}
        do {
            if try NSRegularExpression(pattern: "^[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}$", options: .caseInsensitive).firstMatch(in: value, options: [], range: NSRange(location: .zero, length: value.count)) == nil {
                throw ValidationError(GlobalConstants.please_enter_a_valid_email, type: "email")
            }
        } catch {
            throw ValidationError(GlobalConstants.please_enter_a_valid_email, type: "email")
        }
        return value
    }
    
}
