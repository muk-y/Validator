//
//  PasswordValidator.swift
//  
//
//  Created by Mukesh Shakya on 03/01/2022.
//

import Foundation

struct PasswordValidator: ValidatorConvertible {

    private let type: PasswordType
    
    init(_ type: PasswordType) {
        self.type = type
    }
    
    func validated(_ value: String) throws -> String {
        guard !value.isEmpty else {
            var error = ""
            if type == .normal {
                error = GlobalConstants.text_password_empty
            } else if type == .confirmPassword {
                error = GlobalConstants.text_confirm_password_empty
            }
            throw ValidationError(error, type: self.type.rawValue)
        }
//        guard !value.isEmpty else {throw ValidationError("\(type.title) \(GlobalConstants.Localization.is_required)", type: self.type.rawValue)}
//        guard value.count >= 6 else { throw ValidationError(GlobalConstants.Localization.text_password_validation, type: self.type.rawValue) }
        return value
    }
    
}


public enum PasswordType: String {
    
    case normal
    case oldPassword
    case newPassword
    case confirmPassword
    
    var title: String {
        switch self {
        case .normal:
            return GlobalConstants.text_password
        case .oldPassword:
            return "\(GlobalConstants.current) \(GlobalConstants.text_password)"
        case .newPassword:
            return "\(GlobalConstants.new) \(GlobalConstants.text_password)"
        case .confirmPassword:
            return "\(GlobalConstants.confirm) \(GlobalConstants.text_password)"
        }
    }
    
}
