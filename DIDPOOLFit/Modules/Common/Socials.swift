//
//  Socials.swift
//  DIDPOOLFit
//
//  Created by admin on 21.05.2026.
//

import SwiftUI

struct Socials: View {
    var body: some View {
        VStack(spacing: 20){
            HStack(spacing: 10){
                Rectangle()
                    .frame(maxWidth: .infinity)
                    .frame(height: 1)
                    .border(.gray3, width: 1)
                
                Text("Or")
                    .font(.footnote)
                    .foregroundStyle(.appBlack)
                
                Rectangle()
                    .frame(maxWidth: .infinity)
                    .frame(height: 1)
                    .border(.gray3, width: 1)
            }
            
            HStack(spacing: 30){
                SocialButton(image: Image(.googleLogo))
                SocialButton(image: Image(.facebookLogo))
            }
        }
    }
}

#Preview {
    Socials()
}
