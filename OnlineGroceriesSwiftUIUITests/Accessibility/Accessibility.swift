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
        public static let textField = "TextField"
        
    }
    
    
    public enum Views {
        
        public static let signInScrollView = "Scroll" + Objects.view
        public static let signinView = "Signin" + Objects.view
        public static let signupView = "SignUp" + Objects.view
        public static let signUpScrollView = "SignUpScroll" + Objects.view
        
    }
    
    
    public enum Buttons {
        
        public static let signInButton = "SignIn" + Objects.button + Objects.view
        public static let signUpButton = "SignUp" + Objects.button + Objects.view
        public static let googleButton = "Google" + Objects.button + Objects.view
        public static let facebookButton = "Facebook" + Objects.button + Objects.view
        public static let backButton = "Back" + Objects.button + Objects.view
        public static let eyeFill = "Eye" + Objects.button + "Fill" + Objects.view
        public static let eyeSlash = "Eye" + Objects.button + "Slash" + Objects.view
        public static let eyeButton = "Eye" + Objects.button + Objects.view
        public static let loginButton = "Login" + Objects.button + Objects.view
        public static let forgotPasswordButton = "ForgotPassword" + Objects.button + Objects.view
        public static let dontHaveAccButton = "DontHaveAcc" + Objects.button + Objects.view
        public static let alreadyHaveAccButton = "AlreadyHaveAcc" + Objects.button + Objects.view
        
    }
    
    
    public enum StaticText {
        
        public static let headerStaticText = "Header" + Objects.text + Objects.view
        public static let smallStaticText = "Small" + Objects.text + Objects.view
        public static let loginHeaderStaticText = "Login" + Objects.text + Objects.view
        public static let loginSmallStaticText = "Supporting" + Objects.text + Objects.view
        public static let loginEmailFieldHeader = "Email" + Objects.text + Objects.view
        public static let loginPasswordFieldHeader = "Password" + Objects.text + Objects.view
    }
    
    
    public enum TextField {
        
        public static let secureTextField = "Secure" + Objects.textField + Objects.view
        public static let nonsecureTextField = "Nonsecure" + Objects.textField + Objects.view
        
    }
}
