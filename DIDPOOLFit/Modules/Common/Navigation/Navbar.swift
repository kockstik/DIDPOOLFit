//
//  Navbar.swift
//  DIDPOOLFit
//
//  Created by admin on 3.06.2026.
//

import SwiftUI

struct Navbar: View {
    @Binding var selectedTab: Int
    
    var body: some View {
        HStack{
            HStack(spacing: 38){
                NavbarBtn(selectedTab: $selectedTab, image: .home, index: 0)
                NavbarBtn(selectedTab: $selectedTab, image: .activity, index: 1)
            }
            
            RoundedButton(leadingImage: Image(.search)){
                
            }
            .frame(width: 60)
            .padding(.horizontal, 40)
            .padding(.top, -30)
            .scaleEffect(1.2)
            
            HStack(spacing: 38){
                NavbarBtn(selectedTab: $selectedTab, image: .camera, index: 2)
                NavbarBtn(selectedTab: $selectedTab, image: .user, index: 3)
            }
        }
        .frame(height: 80)
    }
}

#Preview {
    MainView()
}
