//
//  TrackYourGoalView.swift
//  DIDPOOLFit
//
//  Created by admin on 18.05.2026.
//

import SwiftUI

struct TrackYourGoalView: View{
    var body: some View {
        ZStack{
            ZStack(alignment: .bottom){
                VStack(spacing: 0){
                    Image(.onboargingFirst)
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: 230)
                        .padding(.trailing, -20)
                    Spacer()
                        .frame(maxHeight: 384)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                /*.overlay {
                    VStack(spacing: 0){
                        OnboardFirstShape()
                            .fill(.appWhite)
                            .frame(maxHeight: 406)
                        Rectangle()
                            .fill(.appWhite)
                    }
                }*/
            }
            
            VStack(spacing: 15){
                Text("Track Your Goal")
                    .font(.title).bold()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundStyle(.appBlack)
                
                Text(
                """
                Don't worry if you have trouble determining your goals, We can help you determine your goals and track your goals
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

#Preview {
    OnboardingView()
}
