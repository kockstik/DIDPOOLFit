//
//  Input.swift
//  DIDPOOLFit
//
//  Created by admin on 21.05.2026.
//

import SwiftUI

struct Input: View {
    
    @Binding var text: String
    var placeholder: String
    var image: Image?
    
    var body: some View {
        ZStack{
            HStack(spacing: 10){
                image?
                    .resizable()
                    .scaledToFit()
                    .frame(width: 18, height: 18)
                    .foregroundStyle(.gray1)
                TextField(placeholder, text: $text)
                    .font(.footnote)
                    .frame(maxWidth: .infinity)
            }
        }
        .padding(15)
        .frame(maxWidth: .infinity, maxHeight: 48)
        .background{
            RoundedRectangle(cornerRadius: 14)
                .fill(Color(.border))
                .border(.border, width: 1)
        }
    }
}

#Preview {
    @State var t: String = ""
    Input(text: $t, placeholder: "Full Name")
}
