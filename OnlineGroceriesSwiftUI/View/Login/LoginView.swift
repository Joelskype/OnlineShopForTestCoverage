//
//  LoginView.swift
//  OnlineGroceriesSwiftUI
//
//  Created by CodeForAny on 01/08/23.
//

import SwiftUI

struct LoginView: View {
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    @StateObject var loginVM = MainViewModel.shared;
    
    
    var body: some View {
        ZStack {
            Image("bottom_bg")
            .resizable()
            .scaledToFill()
            .frame(width: .screenWidth, height: .screenHeight)
            
            
            VStack{
                
                
                
                Image("color_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40)
                    .padding(.bottom, .screenWidth * 0.1)
                
                
                Text("Login")
                    .font(.customfont(.semibold, fontSize: 26))
                    .foregroundColor(.primaryText)
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom, 4)
                    .accessibilityIdentifier(Accessibility.StaticText.loginHeaderStaticText)
                
                Text("Enter your emails and password")
                    .font(.customfont(.semibold, fontSize: 16))
                    .foregroundColor(.secondaryText)
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom, .screenWidth * 0.1)
                    .accessibilityIdentifier(Accessibility.StaticText.loginSmallStaticText)

                
                LineTextField( title: "Email", placholder: "Enter your email address", txt: $loginVM.txtEmail, keyboardType: .emailAddress)
                    .padding(.bottom, .screenWidth * 0.07)
        

                
                LineSecureField( title: "Password", placholder: "Enter your password", txt: $loginVM.txtPassword, isShowPassword: $loginVM.isShowPassword)
                    .padding(.bottom, .screenWidth * 0.02)
                    
                

                
                
                NavigationLink {
                    ForgotPasswordView()
                } label: {
                    Text("Forgot Password?")
                        .font(.customfont(.medium, fontSize: 14))
                        .foregroundColor(.primaryText)
                }
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .trailing)
                .padding(.bottom, .screenWidth * 0.03)
                .accessibilityIdentifier(Accessibility.Buttons.forgotPasswordButton)
                
                RoundButton(title: "Log In") {
                    loginVM.serviceCallLogin()
                }
                .padding(.bottom, .screenWidth * 0.05)
                .accessibilityIdentifier(Accessibility.Buttons.loginButton)
                
                
                NavigationLink {
                    SignUpView()
                } label: {
                    HStack{
                        Text("Don’t have an account?")
                            .font(.customfont(.semibold, fontSize: 14))
                            .foregroundColor(.primaryText)
                        
                        Text("Signup")
                            .font(.customfont(.semibold, fontSize: 14))
                            .foregroundColor(.primaryApp)
                    }
                }
                .accessibilityIdentifier(Accessibility.Buttons.dontHaveAccButton)

               
                
                Spacer()
            }
            .padding(.top, .topInsets + 64)
            .padding(.horizontal, 20)
            .padding(.bottom, .bottomInsets)
            
            
            VStack {
                    
                HStack {
                    Button {
                        mode.wrappedValue.dismiss()
                    } label: {
                        Image("back")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                    }
                    .accessibilityIdentifier(Accessibility.Buttons.backButton)
                    
                    Spacer()

                }
                
                Spacer()
                
            }
            .padding(.top, .topInsets)
            .padding(.horizontal, 20)
            
            
            
        }
        .alert(isPresented: $loginVM.showError) {
                
            Alert(title: Text(Globs.AppName), message: Text( loginVM.errorMessage ), dismissButton: .default(Text("Ok")))
        }
        .background(Color.white)
        .navigationTitle("")
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
        .ignoresSafeArea()
        .accessibilityElement()
        .accessibilityIdentifier(Accessibility.Views.signinView)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        
        NavigationView {
            LoginView()
        }
        
    }
}
