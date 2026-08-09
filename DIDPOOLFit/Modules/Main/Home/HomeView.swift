//
//  HomeView.swift
//  DIDPOOLFit
//
//  Created by admin on 3.06.2026.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack(spacing: 30){
            HomeTitle()
            BMIPlane()
            CheckPlane()
            
            VStack(alignment: .leading, spacing: 15) {
                Text("Activity Status")
                    .font(.body).bold()
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                HeartRatePanel()
            }
            
            Spacer()
        }
        .frame(maxHeight: .infinity)
        .padding(.horizontal, 30)
    }
}

#Preview {
    HomeView()
}
