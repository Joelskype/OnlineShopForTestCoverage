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
    lazy var signInViewPage = SignInViewPageObject(app: app, welcomeViewPageObject: welcomeViewPageObject)
    lazy var welcomeViewPageObject = WelcomeViewPageObject(app: app)

    override func setUpWithError() throws {
        continueAfterFailure = false
        app.launch()
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
            .returnToSignInView()
        
    }
    
}
