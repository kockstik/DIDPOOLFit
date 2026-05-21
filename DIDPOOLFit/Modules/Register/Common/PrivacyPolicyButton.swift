//
//  PrivacyPolicyButton.swift
//  DIDPOOLFit
//
//  Created by admin on 21.05.2026.
//

import SwiftUI

struct PrivacyPolicyButton: View {
    
    @Binding var isSigned: Bool
    var action: (() -> Void)?
    
    var body: some View {
        HStack(alignment: .top, spacing: 0){
            
            Button {
                isSigned = !isSigned
            } label: {
                RoundedRectangle(cornerRadius: 3)
                    .fill(.clear)
                    .stroke(.gray2, style: .init(lineWidth: 1))
                    .frame(width: 16, height: 16)
                    .overlay {
                        if isSigned {
                            RoundedRectangle(cornerRadius: 1)
                                .fill(.gray2)
                                .padding(2)
                        }
                    }
                    .padding(.trailing, 10)
                    .padding(.bottom, 10)
                
            }
            
            
            
            Button {
                action?()
            } label: {
                (
                    Text("By continuing you accept our ") +
                    Text("Privacy Policy").underline() +
                    Text(" and ") +
                    Text("\nTerm of Use").underline()
                )
                .foregroundStyle(.gray2)
                .font(.caption)
                .frame(maxWidth: .infinity, alignment: .leading)
                .multilineTextAlignment(.leading)
            }
        }
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    @State var signed: Bool = false
    PrivacyPolicyButton(isSigned: $signed)
}
