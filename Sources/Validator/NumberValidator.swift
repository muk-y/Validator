//
//  NumberValidator.swift
//  
//
//  Created by Mukesh Shakya on 03/01/2022.
//

import Foundation

struct NumberValidator: ValidatorConvertible {
    
    private let key: String?
    
    init(_ key: String?) {
        self.key = key
    }
    
    func validated(_ value: String) throws -> String {
        do {
            if value.isEmpty {return value}
            if try NSRegularExpression(pattern: "^[a-zA-Z]+$", options: .caseInsensitive).firstMatch(in: value, options: [], range: NSRange(location: 0, length: value.count)) == nil {
                throw ValidationError(GlobalConstants.text_number_error, type: key ?? "number")
            }
        } catch {
            throw ValidationError(GlobalConstants.text_number_error, type: key ?? "number")
        }
        return value
    }
    
}
