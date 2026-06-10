//
//  HomeTitle.swift
//  DIDPOOLFit
//
//  Created by admin on 10.06.2026.
//

import SwiftUI

struct HomeTitle: View {
    var body: some View {
        HStack{
            VStack(spacing: 5){
                Text("Welcome Back,")
                    .foregroundStyle(.gray2)
                    .font(.footnote)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Text("Masi Ramezanzade")
                    .foregroundStyle(.appBlack)
                    .font(.title).bold()
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            
            RoundedButton(leadingImage: Image(.notification), cornerRadius: 8,backgroundColor: .border) {
                
            }
            .frame(width: 40, height: 40)
        }
    }
}

#Preview {
    HomeTitle()
}
