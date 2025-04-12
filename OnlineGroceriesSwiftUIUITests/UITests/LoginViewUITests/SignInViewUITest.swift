//
//  SignInViewUITest.swift
//  OnlineShopForTestCoverageTests
//
//  Created by Алексей Ряжев on 3/30/25.
//

import XCTest
import SDWebImage

final class SignInViewUITest: XCTestCase {
    
    let app = XCUIApplication()
    lazy var signInViewPage = SignInViewPageObject(app: app)

    override func setUpWithError() throws {
        let welcomeViewPageObject = WelcomeViewPageObject(app: app)
        continueAfterFailure = false
        app.launch()
        welcomeViewPageObject
            .tapGetStartedButton()
    }

    override func tearDownWithError() throws {
        try super.tearDownWithError()
    }


    func testScollingScrollView() {
        
        signInViewPage
            .scrollingScrollView()
        
    }
    
    func testCheckingElementsOnScreen() {
        
        signInViewPage
            .checkElementsExising()
        
    }
    
    func testSignInScreenOpen() {
        
        signInViewPage
            .signInScreenOpen()
        
    }
    
    func testReturnToSignInView() {
        
        signInViewPage
            .returnToSignInViewFromLogin()
        
    }
    
    func testEnterOnLoginView() {
        signInViewPage
            .doubleEnterOnSignUpScreen()
    }
    
    
    func testEnterOnSignInAfterFolding() {
        signInViewPage
            .signInAfterFolding()
    }
    
    
    func testEnterOnSignInAfterTerminate() {
        signInViewPage
            .signInAfterTerminate()
    }
}
