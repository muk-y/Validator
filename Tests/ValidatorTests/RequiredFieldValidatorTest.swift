//
//  RequiredFieldValidatorTest.swift
//  
//
//  Created by ekmacmini43 on 03/01/2022.
//

import XCTest
@testable import Validator

final class RequiredFieldValidatorTest: XCTestCase {
    
    func test_required_field_with_non_empty_string_throw_no_exception() {
        let testField = "123456"
        XCTAssertNoThrow(try testField.validatedText(validationType: .requiredField(field: "key")))
    }
    
    func test_required_field_with_empty_string_throw_exception() {
        let testField = ""
        XCTAssertThrowsError(try testField.validatedText(validationType: .requiredField(field: "key")))
    }
    
}
