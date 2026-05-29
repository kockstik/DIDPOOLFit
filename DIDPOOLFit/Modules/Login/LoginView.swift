//
//  LoginView.swift
//  DIDPOOLFit
//
//  Created by admin on 29.05.2026.
//

import SwiftUI

struct LoginView: View {
    
    @State var text: String = ""
    
    var body: some View {
        VStack(spacing: 30){
            VStack(spacing: 5){
                Text("Hey there,")
                    .font(.title3)
                    .foregroundStyle(.appBlack)
                Text("Welcome Back")
                    .font(.title).bold()
                    .foregroundStyle(.appBlack)
            }
            
            VStack(spacing: 15){
                Input(text: $text, placeholder: "Email", image: Image(.message))
                Input(text: $text, placeholder: "Password", image: Image(.lock))
                
                Button {
                    
                } label: {
                    Text("Forgot your password?")
                        .foregroundStyle(.gray2)
                        .font(.footnote)
                        .padding(.top, -5)
                }
            }
            
            Spacer()
            
            VStack(spacing: 20){
                NavigationLink{
                    //SuccessRegistrationView()
                } label: {
                    RoundedButton(leadingImage: Image(.login), title: "Login")
                }
                Socials()
            }
            
            AskButton(question: "Don`t have an account yet?", answer: "Register") {
                
            }
        }
        .frame(maxHeight: .infinity)
        .padding(.top, 50)
        .padding(.vertical, 40)
        .padding(.horizontal, 30)
        .ignoresSafeArea()
    }
}

#Preview {
    LoginView()
}
