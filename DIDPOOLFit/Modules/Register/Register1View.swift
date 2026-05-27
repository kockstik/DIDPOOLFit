//
//  Register1View.swift
//  DIDPOOLFit
//
//  Created by admin on 21.05.2026.
//

import SwiftUI

struct Register1View: View {
    
    @State var text: String = ""
    @State var signed: Bool = false
    
    var body: some View {
        VStack(spacing: 30){
            
            VStack(spacing: 5){
                Text("Hey there,")
                    .font(.title3)
                    .foregroundStyle(.appBlack)
                Text("Create an Account")
                    .font(.title).bold()
                    .foregroundStyle(.appBlack)
            }
            
            VStack(spacing: 15){
                Input(text: $text, placeholder: "Full Name", image: Image(.profile))
                Input(text: $text, placeholder: "Phone Number", image: Image(.call))
                Input(text: $text, placeholder: "Email", image: Image(.message))
                Input(text: $text, placeholder: "Password", image: Image(.lock))
                PrivacyPolicyButton(isSigned: $signed) {
                    // Open privacy policy
                }
                .padding(.top, -5)
            }
            
            Spacer()
            
            VStack(spacing: 20){
                NavigationLink{
                    Register2View()
                } label: {
                    RoundedButton(title: "Register")
                }
                Socials()
            }
            
            AskButton(question: "Already have an account?", answer: "Login") {
                
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding(.horizontal, 30)
        .padding(.vertical, 40)
    }
}

#Preview {
    Register1View()
}
