//
//  EatWellView.swift
//  DIDPOOLFit
//
//  Created by admin on 19.05.2026.
//

import SwiftUI

struct EatWellView: View {
    var body: some View {
        ZStack{
            ZStack(alignment: .bottom){
                VStack(spacing: 0){
                    Image(.onboargingThird)
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: 310)
                        .padding(.trailing, -40)
                    Spacer()
                        .frame(maxHeight: 350)
                }
                /*VStack(spacing: 0){
                    OnboardThirdShape()
                        .fill(.appWhite)
                        .frame(maxHeight: 435)
                    Rectangle()
                        .fill(.appWhite)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .overlay {
                    VStack(spacing: 0){
                        Image(.onboargingThird)
                            .resizable()
                            .scaledToFit()
                            .frame(maxWidth: 328)
                            .padding(.trailing, -40)
                        Spacer()
                            .frame(maxHeight: 370)
                    }
                }*/
            }
            
            VStack(spacing: 15){
                Text("Eat Well")
                    .font(.title).bold()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundStyle(.appBlack)
                
                Text(
                """
                Let's start a healthy lifestyle with us, we can determine your diet every day. healthy eating is fun
                """)
                .multilineTextAlignment(.leading)
                .font(.body)
                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundStyle(.gray1)
                .lineLimit(10)
            }
            .padding(.top, 160)
            .padding(.horizontal, 30)
        }
        .frame(maxHeight: .infinity)
        .ignoresSafeArea()
    }
}

#Preview{
    OnboardingView()
}
