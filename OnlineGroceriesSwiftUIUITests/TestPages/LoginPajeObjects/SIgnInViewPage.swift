//
//  SIgnInViewPage.swift
//  OnlineShopForTestCoverageTests
//
//  Created by Алексей Ряжев on 3/19/25.
//

import XCTest
@testable import OnlineShopForTestCoverage
import SDWebImage

final class SignInViewPageObject {
    
    private let app: XCUIApplication
    private let welcomeViewPageObject: WelcomeViewPageObject
    
    init(app: XCUIApplication, welcomeViewPageObject: WelcomeViewPageObject) {
        self.app = app
        self.welcomeViewPageObject = welcomeViewPageObject
    }
    
    
   //Elements
    
    
    var scrollView: XCUIElement {
        app.scrollViews[Accessibility.Views.scrollView]
    }
    
    var headerTextField: XCUIElement {
        app.staticTexts[Accessibility.StaticText.headerTextField]
    }
    
    var signInButton: XCUIElement {
        app.buttons[Accessibility.Buttons.signInButton]
    }
    
    var signUpButton: XCUIElement {
        app.buttons[Accessibility.Buttons.signUpButton]
    }
    
    var smallTextField: XCUIElement {
        app.staticTexts[Accessibility.StaticText.smallTextField]
    }
    
    var googleButton: XCUIElement {
        app.buttons[Accessibility.Buttons.googleButton]
    }
    
    var facebookButton: XCUIElement {
        app.buttons[Accessibility.Buttons.facebookButton]
    }
    
    var backButton: XCUIElement {
        app.buttons[Accessibility.Buttons.backButton]
    }
    
    
    //Actions
    
    func scrollingScrollView() {
        
        welcomeViewPageObject.tapGetStartedButton()
        scrollView.swipeDown()
        sleep(2)
        scrollView.swipeUp()
        
        
    }
    
    func checkElementsExising() {
        welcomeViewPageObject
            .tapGetStartedButton()
        XCTAssertTrue(headerTextField.exists)
        XCTAssertTrue(signInButton.isHittable)
        XCTAssertTrue(signUpButton.isHittable)
        XCTAssertTrue(smallTextField.exists)
        XCTAssertTrue(googleButton.isHittable)
        XCTAssertTrue(facebookButton.isHittable)
        
    }
    
    func signInScreenOpen() {
        welcomeViewPageObject
            .tapGetStartedButton()
        signInButton.tap()
        XCTAssertTrue(backButton.isHittable)
    }
    
    func returnToSignInView() {
        welcomeViewPageObject
            .tapGetStartedButton()
        signInButton.tap()
        backButton.tap()
        XCTAssertTrue(scrollView.isHittable)
    }

}
