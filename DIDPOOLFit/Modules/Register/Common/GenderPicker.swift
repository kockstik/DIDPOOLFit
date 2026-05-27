//
//  GenderPicker.swift
//  DIDPOOLFit
//
//  Created by admin on 22.05.2026.
//

import SwiftUI

struct GenderPicker: View {
    var didSelect: ((Gender) -> Void)?
    
    @State var gender: Gender?
    
    var body: some View {
        Menu {
            Button {
                gender = .male
                didSelect?(.male)
            } label: {
                Text("Male")
                    .font(.footnote)
                    .foregroundStyle(.gray1)
            }
            
            Button {
                gender = .female
                didSelect?(.female)
            } label: {
                Text("Female")
                    .font(.footnote)
                    .foregroundStyle(.gray1)
            }
        } label: {
            HStack(spacing: 10){
                Image(._2User)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 18, height: 18)
                    .foregroundStyle(.gray1)
                
                Text(gender == nil ? "Choose Gender" : gender!.rawValue)
                    .multilineTextAlignment(.leading)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundStyle(gender == nil ? .gray2 : .appBlack)
                    .font(.footnote)
                
                Image(.dropdown)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 18, height: 18)
                    .foregroundStyle(.gray1)
            }
            .padding(15)
            .frame(maxWidth: .infinity, maxHeight: 48)
            .background{
                RoundedRectangle(cornerRadius: 14)
                    .fill(Color(.border))
            }
        }
    }
}
