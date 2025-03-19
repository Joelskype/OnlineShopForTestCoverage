//
//  WelcomeViewUITest.swift
//  OnlineShopForTestCoverageUITests
//
//  Created by Алексей Ряжев on 3/16/25.
//

import XCTest
import SDWebImage

final class WelcomeViewUITest: XCTestCase {

    let app = XCUIApplication()
    lazy var welcomeViewPage = WelcomeViewPageObject(app: app)
    
    override func setUpWithError() throws {
        
        continueAfterFailure = false
        
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        app.launch()
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    
    func testOpenSignIn() {
        
        app.launch()
        welcomeViewPage
            .tapGetStartedButton()
        welcomeViewPage
            .checkButtonsExisting()
    }
}
