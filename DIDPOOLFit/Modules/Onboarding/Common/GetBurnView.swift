//
//  GetBurnView.swift
//  DIDPOOLFit
//
//  Created by admin on 19.05.2026.
//

import SwiftUI

struct GetBurnView: View {
    var body: some View {
        ZStack{
            ZStack(alignment: .bottom){
                VStack(spacing: 0){
                    /*OnboardSecondShape()
                        .fill(.appWhite)
                        .frame(maxHeight: 275)
                    Rectangle()
                        .fill(.appWhite)*/
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .overlay {
                    VStack(spacing: 0){
                        Image(.onboargingSecond)
                            .resizable()
                            .scaledToFit()
                            .frame(maxWidth: 268)
                        Spacer()
                            .frame(maxHeight: 385)
                    }
                }
            }
            
            VStack(spacing: 15){
                Text("Get Burn")
                    .font(.title).bold()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundStyle(.appBlack)
                
                Text(
                """
                Let’s keep burning, to achive yours goals, it hurts only temporarily, if you give up now you will be in pain forever
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
    GetBurnView()
}
