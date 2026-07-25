//
//  WelcomeView.swift
//  DIDPOOLFit
//
//  Created by admin on 18.05.2026.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ZStack{
            ZStack{
                VStack(spacing: 10) {
                    (Text("DIDPOOL").foregroundStyle(.white) + Text("Fit"))
                        .font(.system(size: 36, weight: .bold))
                    Text("Everybody Can Train")
                        .foregroundStyle(.white)
                }
                .padding()
                
                VStack{
                    Spacer()
                    NavigationLink{
                        OnboardingView()
                            .navigationBarBackButtonHidden(true)
                    } label: {
                        RoundedButton(title: "Get started")
                    }
                    .frame(alignment: .bottom)
                }
            }
            .padding(.horizontal, 30)
            .padding(.bottom, 20)
        }
        .background(BackgroundGradient.gradient)
    }
}

#Preview {
    WelcomeView()
}
