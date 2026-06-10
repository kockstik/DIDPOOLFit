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
    var cornerRadius: CGFloat = 99
    var backgroundColor: Color?
    var action: (() -> Void)?
    
    var body: some View {
        Button{
            action?()
        } label: {
            ZStack{
                if let backgroundColor = backgroundColor {
                    Rectangle()
                        .fill(backgroundColor)
                } else {
                    LogoGradient()
                }
                
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
        .cornerRadius(cornerRadius)
        .frame(maxHeight: 60)
        .shadow(color: .shadow, radius: backgroundColor == nil ? 22 : 0, x: 0, y: backgroundColor == nil ? 10 : 0)
    }
}

#Preview {
    RoundedButton()
}
