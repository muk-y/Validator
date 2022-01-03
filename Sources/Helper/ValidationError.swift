//
//  ValidationError.swift
//  
//
//  Created by Mukesh Shakya on 03/01/2022.
//

import Foundation

class ValidationError: Error {
    
    var message: String
    var type: String
    
    init(_ message: String, type: String) {
        self.message = message
        self.type = type
    }
    
}
