//
//  RequiredFieldValidator.swift
//  
//
//  Created by Mukesh Shakya on 03/01/2022.
//

import Foundation

struct RequiredFieldValidator: ValidatorConvertible {
    
    private let type: String
    
    init(_ field: String) {
        type = field
    }
    
    func validated(_ value: String) throws -> String {
        guard !value.isEmpty else {
            throw ValidationError(type + " \(GlobalConstants.text_required_field_empty)", type: type.lowercased())
        }
        return value
    }
    
}
