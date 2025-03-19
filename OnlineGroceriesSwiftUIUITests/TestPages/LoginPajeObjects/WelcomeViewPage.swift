//
//  WelcomeView.swift
//  OnlineShopForTestCoverageApp
//
//  Created by Алексей Ряжев on 3/16/25.
//

import XCTest
@testable import OnlineShopForTestCoverage
import SDWebImage

final class WelcomeViewPageObject {
    
    private let app: XCUIApplication
    
    init(app: XCUIApplication) {
        self.app = app
    }
    
    //Elements
    
    var getStartedButton: XCUIElement {
        app.buttons.element(matching: NSPredicate(format: "label == 'Get Started'"))
    }
    
    var signInButton: XCUIElement {
        app.buttons.element(matching: NSPredicate(format: "label == 'Continue with Email Sign In'"))
    }
    
    //Actions
    
    func tapGetStartedButton() {
        getStartedButton.tap()
    }
    
    func checkButtonsExisting() {
        
        XCTAssertTrue(signInButton.exists)
        
        
    }
}

