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
            Spacer()
        }
        .frame(maxHeight: .infinity)
        .padding(.horizontal, 30)
    }
}

#Preview {
    HomeView()
}
