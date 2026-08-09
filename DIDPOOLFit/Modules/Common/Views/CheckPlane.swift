//
//  TodayTargetPlane.swift
//  DIDPOOLFit
//
//  Created by admin on 25.07.2026.
//

import SwiftUI

struct CheckPlane: View {
    var title: String = "Today Target"
    var action: (() -> Void)?
    
    var body: some View {
        HStack{
            Text(title)
            Spacer()
            
            Button{
                action?()
            } label: {
                RoundedRectangle(cornerRadius: 50)
                    .fill(LogoGradient.gradient)
                    .frame(width: 70, height: 30)
                    .cornerRadius(50)
                    .overlay{
                        Text("Check")
                            .font(.footnote)
                            .foregroundStyle(.white)
                    }
                
            }
        }
        .padding(.horizontal, 20)
        .padding(.vertical, 15)
        .background{
            RoundedRectangle(cornerRadius: 16)
                .fill(BackgroundGradient.gradient)
                .opacity(0.2)
        }

        
    }
}

#Preview {
    CheckPlane()
}
