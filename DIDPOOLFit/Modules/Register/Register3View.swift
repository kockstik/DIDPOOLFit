//
//  Register3View.swift
//  DIDPOOLFit
//
//  Created by admin on 27.05.2026.
//

import SwiftUI

struct Register3View: View {
    var body: some View {
        VStack{
            VStack(spacing: 5){
                Text("What is your goal ?")
                    .font(.title).bold()
                    .foregroundStyle(.appBlack)
                Text("It will help us to choose a best\nprogram for you")
                    .font(.footnote)
                    .foregroundStyle(.gray1)
                    .multilineTextAlignment(.center)
            }
            
            GoalSelectionView()
                .padding(.top, 50)
                .padding(.horizontal, -30)
            
            Spacer()
            
            RoundedButton(title: "Confirm")
        }
        .frame(maxHeight: .infinity)
        .padding(.top, 50)
        .padding(.vertical, 40)
        .padding(.horizontal, 30)
        .ignoresSafeArea()
    }
}

#Preview {
    Register3View()
}
