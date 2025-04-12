//
//  LoginPageObject.swift
//  OnlineShopForTestCoverageUITests
//
//  Created by Алексей Ряжев on 4/5/25.
//

import XCTest
@testable import OnlineShopForTestCoverage
import SDWebImage

final class LoginViewPageObject {

    private let app: XCUIApplication
    
    init(app: XCUIApplication) {
        self.app = app
    }
    
    
    //Elements
    
    
    var secureTextfield: XCUIElement {
        app.textFields[Accessibility.TextField.secureTextField]
    }
    
    
    var eyeFill: XCUIElement {
        app.buttons[Accessibility.Buttons.eyeFill]
    }
    
    
    var eyeSlash: XCUIElement {
        app.buttons[Accessibility.Buttons.eyeSlash]
    }
    
    
    var eyeButton: XCUIElement {
        app.buttons[Accessibility.Buttons.eyeButton]
    }
    
    
    var secureTextField: XCUIElement {
        app.otherElements[Accessibility.TextField.secureTextField]
    }
    
    
    var nonsecureTextField: XCUIElement {
        app.otherElements[Accessibility.TextField.nonsecureTextField]
    }
    
    
    var loginButton: XCUIElement {
        app.buttons[Accessibility.Buttons.loginButton]
    }
    
    
    var someAlert: XCUIElement {
        app.alerts["Online Groceries"]
    }
    
    
    var loginHeaderText: XCUIElement {
        app.staticTexts[Accessibility.StaticText.loginHeaderStaticText]
    }
    
    
    var loginSmallText: XCUIElement {
        app.staticTexts[Accessibility.StaticText.loginSmallStaticText]
    }
    
    
    var loginEmailStaticText: XCUIElement {
        app.staticTexts[Accessibility.StaticText.loginEmailFieldHeader]
    }
    
    
    var dontHaveAccButton: XCUIElement {
        app.buttons[Accessibility.Buttons.dontHaveAccButton]
    }
    
    
    var alreadyHaveAccButton: XCUIElement {
        app.buttons[Accessibility.Buttons.alreadyHaveAccButton]
    }
    
    
    
    //Actions
    
    
    func loginViewComponentsChecking() {
        
    }
    
    
    func emailFieldCheck() {
        
    }
    
    
    func passwordFieldCheck() {
        
    }
    
    
    func checkHiddenButtonTap() {
        eyeFill.tap()
        
    }
    
    
    func swapPasswordFieldDisplay() {
        
    }
    
    
    func tapLogInButtonWithoutCreds() {
        
    }
    
    
    func tapLogInButtonWithoutPassword() {
        
    }
    
    
    func tapLoginButtonWithoutEmail() {
        
    }
    
    
    func tapForgotPassword() {
        
    }
    
    
    func tapSignupButton() {
        
    }
    
    
    func checkNavigationBtwSignInAndSignUp() {
        
        let signUpPageObject = SignUpPageObject(app: app)
        let signUpScrollView = signUpPageObject.signUpScrollView
        
        dontHaveAccButton.tap()
        print(app.debugDescription)
        signUpScrollView.swipeUp()
        alreadyHaveAccButton.tap()
        
        
    }
}

