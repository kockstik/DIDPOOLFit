//
//  SuccessRegistrationView.swift
//  DIDPOOLFit
//
//  Created by admin on 29.05.2026.
//

import SwiftUI

struct SuccessRegistrationView: View {
    var body: some View {
        VStack(spacing: 5){
            Image(.welcome)
            
            Text("Welcome, Stefani")
                .font(.title).bold()
                .foregroundStyle(.appBlack)
                .padding(.top, 40)
            
            Text("You are all set now, let’s reach your\ngoals together with us")
                .foregroundStyle(.gray1)
                .font(.footnote)
                .multilineTextAlignment(.center)
            
            Spacer()
            
            NavigationLink {
                
            } label: {
                RoundedButton(title: "Go To Home")
            }
        }
        .padding(.vertical, 20)
        .padding(.top, 40)
        .padding(.horizontal, 30)
    }
}

#Preview {
    SuccessRegistrationView()
}
