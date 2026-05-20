//
//  RoundedButton.swift
//  DIDPOOLFit
//
//  Created by admin on 18.05.2026.
//

import SwiftUI

struct RoundedButton: View {
    var image: Image?
    var title: String?
    var action: (() -> Void)?
    
    var body: some View {
        Button{
            action?()
        } label: {
            ZStack{
                LinearGradient(colors: [.logoLinearLeft, .logoLinearRight], startPoint: UnitPoint(x: -0.5, y: -0.5), endPoint: UnitPoint(x: 2, y: 2))
                
                HStack(alignment: .center, spacing: 10){
                    image
                    if let title = title {
                        Text(title)
                            .font(.system(size: 16, weight: .bold))
                            .foregroundStyle(.white)
                    }
                }
            }
        }
        .allowsHitTesting(action != nil)
        .cornerRadius(99)
        .frame(height: 60)
    }
}

#Preview {
    RoundedButton()
}
