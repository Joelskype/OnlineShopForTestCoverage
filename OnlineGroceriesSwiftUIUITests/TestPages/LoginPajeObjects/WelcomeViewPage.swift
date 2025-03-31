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
    
    var viewBackground: XCUIElement {
        app.images.element(matching: NSPredicate(format: "label == 'welcom_bg'"))
    }
    
    //Actions
    
    func getGetStartedButtonLabel() -> String {
        getStartedButton.label
    }
    
    func checkGetStartedButtonLabel() {
        XCTAssertTrue(getGetStartedButtonLabel() == "Get Started")
    }
    
    
    func tapGetStartedButton() {
        getStartedButton.tap()
    }
    
    
    func checkButtonsExisting() {
        XCTAssertTrue(signInButton.isHittable)
    }
    
    
    func checkBackgroundImage() {
        XCTAssertTrue(viewBackground.isHittable)
    }
}

