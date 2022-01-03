//
//  EmailValidatorTest.swift
//  
//
//  Created by Mukesh Shakya on 03/01/2022.
//

import Foundation

import Foundation
import XCTest
@testable import Validator

final class EmailValidatorTest: XCTestCase {
    
    func test_email_validator_with_valid_email_returns_no_exception() {
        let testEmail = "mukeshakya11@gmail.com"
        XCTAssertNoThrow(try testEmail.validatedText(validationType: .email))
    }
    
    func test_email_validator_with_invalid_email_returns_exception() {
        let testEmail = "mukeshakya11"
        XCTAssertThrowsError(try testEmail.validatedText(validationType: .email))
    }
    
}
