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
    
    init(app: XCUIApplication) {
        self.app = app
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
    
    var loginView: XCUIElement {
        app.otherElements[Accessibility.Views.loginView]
    }
    
    var signupView: XCUIElement {
        app.otherElements[Accessibility.Views.signupView]
    }
    
    
    //Actions
    
    func scrollingScrollView() {
        
        scrollView.swipeDown()
        sleep(2)
        scrollView.swipeUp()
        
        
    }
    
    func checkElementsExising() {
    
        XCTAssertTrue(headerTextField.exists)
        XCTAssertTrue(signInButton.isHittable)
        XCTAssertTrue(signUpButton.isHittable)
        XCTAssertTrue(smallTextField.exists)
        XCTAssertTrue(googleButton.isHittable)
        XCTAssertTrue(facebookButton.isHittable)
        
    }
    
    func signInScreenOpen() {
        signInButton.tap()
        XCTAssertTrue(backButton.isHittable)
    }
    
    
    func signUpScreenOpen() {
        signUpButton.tap()
        XCTAssertTrue(backButton.isHittable)
    }
    
    
    func returnToSignInViewFromLogin() {
        signInButton.tap()
        backButton.tap()
        XCTAssertTrue(scrollView.isHittable)
    }
    
    
    func returnToSignInViewFromSignUp() {
        signUpButton.tap()
        backButton.tap()
        XCTAssertTrue(scrollView.isHittable)
    }
    
    
    func doubleEnterOnLogscreen() {
        signInButton.tap()
        XCTAssertTrue(loginView.isHittable)
        backButton.tap()
        XCTAssertTrue(scrollView.isHittable)
        signInButton.tap()
        XCTAssertTrue(loginView.isHittable)
    }
    
    
    func doubleEnterOnSignUpScreen() {
        signUpButton.tap()
        XCTAssertTrue(signupView.isHittable)
        backButton.tap()
        XCTAssertTrue(scrollView.isHittable)
        signUpButton.tap()
        
    }
    //TODO: повторный вход на экран авторизации, после выхода. Проверки для каждой кнопки
}
