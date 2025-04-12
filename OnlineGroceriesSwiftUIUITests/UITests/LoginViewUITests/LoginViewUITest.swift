//
//  LoginViewUITest.swift
//  OnlineShopForTestCoverageUITests
//
//  Created by Алексей Ряжев on 4/6/25.
//

import XCTest
import SDWebImage

final class LoginViewUITest: XCTestCase {

    let app = XCUIApplication()
    lazy var loginViewPageObject = LoginViewPageObject(app:app)
    
    override func setUpWithError() throws {
        let welcomeViewPage = WelcomeViewPageObject(app: app)
        let signInViewPage = SignInViewPageObject(app: app)
        continueAfterFailure = false
        app.launch()
        welcomeViewPage
            .tapGetStartedButton()
        signInViewPage
            .signInScreenOpen()
        
    }

    override func tearDownWithError() throws {
        
    }

    
    //print(app.debugDescription)
    
    func testEyeButton() {
        loginViewPageObject
            .checkHiddenButtonTap()
    }
    
    
    func test() {
        loginViewPageObject
            .checkNavigationBtwSignInAndSignUp()
    }
}
