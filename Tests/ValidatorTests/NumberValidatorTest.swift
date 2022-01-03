//
//  NumberValidatorTest.swift
//  
//
//  Created by Mukesh Shakya on 03/01/2022.
//

import Foundation
import XCTest
@testable import Validator

final class NumberValidatorTest: XCTestCase {
    
    func test_number_validator_with_numbers_only_returns_no_exception() {
        let testString = "123"
        XCTAssertNoThrow(try testString.validatedText(validationType: .number()))
    }
    
}
