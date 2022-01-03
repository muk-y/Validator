//
//  File.swift
//  
//
//  Created by ekmacmini43 on 03/01/2022.
//

import Foundation

protocol ValidatorConvertible {
    
    func validated(_ value: String) throws -> String
    
}
