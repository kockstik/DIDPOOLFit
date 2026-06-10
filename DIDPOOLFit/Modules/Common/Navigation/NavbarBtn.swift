//
//  NavbarBtn.swift
//  DIDPOOLFit
//
//  Created by admin on 3.06.2026.
//

import SwiftUI

struct NavbarBtn: View {
    
    @Binding var selectedTab: Int
    
    var image: UIImage
    var index: Int
    
    private var solidGradient: LinearGradient {
        return LinearGradient(colors: [.gray2], startPoint: .top, endPoint: .bottom)
    }
    
    var body: some View {
        Button {
            if selectedTab != index {
                withAnimation(.easeInOut(duration: 0.25)){
                    selectedTab = index
                }
            }
        } label: {
            VStack(spacing: 3){
                Image(uiImage: image)
                    .foregroundStyle(selectedTab == index ? LogoGradient.gradient : solidGradient)
                    .scaledToFit()
                    .frame(width: 24, height: 24)
                
                RoundedRectangle(cornerRadius: 99)
                    .fill(LogoGradient.gradient)
                    .frame(width: 4, height: 4)
                    .opacity(selectedTab == index ? 1 : 0)
            }
        }
    }
}
