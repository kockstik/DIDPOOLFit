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
                LogoGradient()
                
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
