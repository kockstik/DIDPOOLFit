//
//  RoundedButton.swift
//  DIDPOOLFit
//
//  Created by admin on 18.05.2026.
//

import SwiftUI

struct RoundedButton: View {
    var leadingImage: Image?
    var title: String?
    var trailingImage: Image?
    var action: (() -> Void)?
    
    var body: some View {
        Button{
            action?()
        } label: {
            ZStack{
                LogoGradient()
                
                HStack(alignment: .center, spacing: 10){
                    leadingImage
                        .foregroundStyle(.white)
                    if let title = title {
                        Text(title)
                            .font(.system(size: 16, weight: .bold))
                            .foregroundStyle(.white)
                    }
                    trailingImage
                        .foregroundStyle(.white)
                }
            }
        }
        .allowsHitTesting(action != nil)
        .cornerRadius(99)
        .frame(height: 60)
        .shadow(color: .shadow, radius: 22, x: 0, y: 10)
    }
}

#Preview {
    RoundedButton()
}
