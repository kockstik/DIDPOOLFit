//
//  ProgressButton.swift
//  DIDPOOLFit
//
//  Created by admin on 20.05.2026.
//

import SwiftUI

struct ProgressButton: View {
    
    var progress: CGFloat = 0
    var action: (() -> Void)?
    
    var body: some View {
        ZStack{
            Circle()
                .stroke(lineWidth: 1)
                .foregroundStyle(.gray)
                .frame(width: 60, height: 60)
                .opacity(0.3)
            
            Circle()
                .trim(from: 0, to: progress)
                .stroke(lineWidth: 2)
                .foregroundStyle(LogoGradient.gradient)
                .frame(width: 60, height: 60)
                .rotationEffect(Angle(degrees: -90))
                .animation(.linear(duration: 0.2), value: progress)
            
            Button {
                action?()
            } label: {
                ZStack{
                    Circle()
                        .fill(LogoGradient.gradient)
                        .frame(width: 50, height: 50)
                    
                    Image(.rightArrow)
                        .tint(Color.white)
                }
            }
        }
    }
}

#Preview {
    ProgressButton(progress: 0.32)
}
