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
                VStack {
                    (Text("DIDPOOL").foregroundStyle(.white) + Text("Fit"))
                        .font(.system(size: 36, weight: .bold))
                    Text("Everybody Can Train")
                        .foregroundStyle(.black)
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
            .padding(.bottom, 40)
        }
        .background(BackgroundGradient.gradient)
        .ignoresSafeArea()
    }
}

#Preview {
    WelcomeView()
}
