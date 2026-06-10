//
//  SocialButton.swift
//  DIDPOOLFit
//
//  Created by admin on 21.05.2026.
//

import SwiftUI

struct SocialButton: View {
    var image: Image?
    var action: (() -> Void)?
    
    var body: some View {
        Button{
            action?()
        } label: {
            image?
                .resizable()
                .scaledToFit()
                .frame(width: 20, height: 20)
        }
        .allowsHitTesting(action != nil)
        .frame(width: 50, height: 50)
        .background {
            RoundedRectangle(cornerRadius: 14)
                .stroke(.gray3, lineWidth: 0.8)
        }
    }
}
