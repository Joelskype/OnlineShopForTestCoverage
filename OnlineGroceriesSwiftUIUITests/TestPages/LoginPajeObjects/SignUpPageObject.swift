//
//  SignUpPageObject.swift
//  OnlineShopForTestCoverageUITests
//
//  Created by Алексей Ряжев on 4/12/25.
//

import XCTest
@testable import OnlineShopForTestCoverage
import SDWebImage


final class SignUpPageObject {
    let app: XCUIApplication
    
    init(app: XCUIApplication) {
        self.app = app
    }
    
    
    //Elements
    
    
    var signUpScrollView: XCUIElement {
        app.scrollViews[Accessibility.Views.signUpScrollView]
    }
    
}

