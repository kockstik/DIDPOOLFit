//
//  SleepQualityView.swift
//  DIDPOOLFit
//
//  Created by admin on 20.05.2026.
//

import SwiftUI

struct SleepQualityView: View {
    var body: some View {
        ZStack{
            ZStack(alignment: .bottom){
                VStack(spacing: 0){
                    /*OnboardFourShape()
                        .fill(.appWhite)
                        .frame(maxHeight: 380)
                    Rectangle()
                        .fill(.appWhite)*/
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .overlay {
                    VStack(spacing: 0){
                        Image(.onboargingFour)
                            .resizable()
                            .scaledToFit()
                            .frame(maxWidth: 243)
                        Spacer()
                            .frame(maxHeight: 370)
                    }
                }
            }
            
            VStack(spacing: 15){
                Text("Improve Sleep Quality")
                    .font(.title).bold()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundStyle(.appBlack)
                
                Text(
                """
                Improve the quality of your sleep with us, good quality sleep can bring a good mood in the morning
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
    SleepQualityView()
}
