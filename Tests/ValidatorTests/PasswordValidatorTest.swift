//
//  PasswordValidatorTest.swift
//  
//
//  Created by ekmacmini43 on 03/01/2022.
//

import Foundation
import XCTest
@testable import Validator

final class PasswordValidatorTest: XCTestCase {
    
    func test_normal_password_throw_no_exception() {
        let testPassword = "123456"
        XCTAssertNoThrow(try testPassword.validatedPassword(.normal))
    }
    
    func test_normal_password_throw_exception() {
        let testPassword = ""
        XCTAssertNoThrow(try testPassword.validatedPassword(.normal))
    }
    
    func test_old_password_throw_no_exception() {
        let testPassword = "123456"
        XCTAssertNoThrow(try testPassword.validatedPassword(.oldPassword))
    }
    
    func test_old_password_throw_exception() {
        let testPassword = ""
        XCTAssertNoThrow(try testPassword.validatedPassword(.oldPassword))
    }
    
    func test_new_password_throw_no_exception() {
        let testPassword = "123456"
        XCTAssertNoThrow(try testPassword.validatedPassword(.newPassword))
    }
    
    func test_new_password_throw_exception() {
        let testPassword = ""
        XCTAssertNoThrow(try testPassword.validatedPassword(.newPassword))
    }
    
    func test_confirm_password_throw_no_exception() {
        let testPassword = "123456"
        XCTAssertNoThrow(try testPassword.validatedPassword(.confirmPassword))
    }
    
    func test_confirm_password_throw_exception() {
        let testPassword = ""
        XCTAssertNoThrow(try testPassword.validatedPassword(.confirmPassword))
    }
    
}
