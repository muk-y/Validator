//
//  ValidationError.swift
//  
//
//  Created by Mukesh Shakya on 03/01/2022.
//

import Foundation

public class ValidationError: Error {
    
    public var message: String
    public var type: String
    
    init(_ message: String, type: String) {
        self.message = message
        self.type = type
    }
    
}
