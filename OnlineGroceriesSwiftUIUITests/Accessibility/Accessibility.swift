//
//  Elements.swift
//  OnlineShopForTestCoverageApp
//
//  Created by Алексей Ряжев on 3/30/25.
//

import Foundation

public enum Accessibility {
    
    public enum Objects {
        public static let view = "View"
        public static let text = "Text"
        public static let button = "Button"
        
    }
    
    public enum Views {
        
        public static let scrollView = "Scroll" + Objects.view
        
    }
    
    public enum Buttons {
        
        public static let signInButton = "SignIn" + Objects.button + Objects.view
        public static let signUpButton = "SignUp" + Objects.button + Objects.view
        public static let googleButton = "Google" + Objects.button + Objects.view
        public static let facebookButton = "Facebook" + Objects.button + Objects.view
        public static let backButton = "Back" + Objects.button + Objects.view
        
    }
    
    public enum StaticText {
        
        public static let headerTextField = "Header" + Objects.text + Objects.view
        public static let smallTextField = "Small" + Objects.text + Objects.view
    }
}
