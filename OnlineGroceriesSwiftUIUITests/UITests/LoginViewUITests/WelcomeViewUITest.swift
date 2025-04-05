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
    
    
    override func setUp() {
        super.setUp()
        app.launch()
    }
    
    
    func testGetStartedButtonLabel() {
        welcomeViewPage
            .checkGetStartedButtonLabel()
    }
    
    
    func testWelcomeBackground() {
        welcomeViewPage
            .checkBackgroundImage()
    }
    
    
    func testTapGetStarted() {
        welcomeViewPage
            .tapGetStartedButton()
        
    }
    
    
    func testOpenSignIn() {
        welcomeViewPage
            .tapGetStartedButton()
        welcomeViewPage
            .checkButtonsExisting()
    }
    
    
    func testTapGetstartedAfterFolding() {
        welcomeViewPage
            .tapGetstartedAafterFolding()
    }
    
    
    func testTapGetstartedAfterTerminate() {
        welcomeViewPage
            .tapGetStartedButtonAfterTerminate()
    }
    
    
}
