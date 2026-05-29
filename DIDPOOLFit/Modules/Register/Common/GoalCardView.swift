//
//  GoalCard.swift
//  DIDPOOLFit
//
//  Created by admin on 27.05.2026.
//

import SwiftUI

struct GoalCardView: View {
    
    var image: Image
    var name: String
    var description: String
    
    var body: some View {
        VStack(spacing: 0){
            ZStack(alignment: .center){
                image
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            Text(name)
                .font(.body).bold()
                .foregroundStyle(.white)
                .padding(.bottom, 3)
                .padding(.top, 20)
            
            Rectangle()
                .fill(.white)
                .frame(width: 50, height: 1)
            
            Text(description)
                .font(.footnote)
                .foregroundStyle(.white)
                .multilineTextAlignment(.center)
                .padding(.top, 20)
        }
        .padding(30)
        .frame(width: 275, height: 478)
        .background{
            RoundedRectangle(cornerRadius: 22)
                .fill(BackgroundGradient.gradient)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
}

#Preview {
    GoalCardView(image: Image(.goal1), name: "Improve Shape", description: "I have a low amount of body fat and need / want to build more muscle")
}
