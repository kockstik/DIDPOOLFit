//
//  Onboarding.swift
//  DIDPOOLFit
//
//  Created by admin on 18.05.2026.
//

import SwiftUI

struct OnboardingView: View{
    
    @State private var page = 0
    
    var body: some View {
        TabView(selection: $page){
            TrackYourGoalView().tag(0)
            GetBurnView().tag(1)
            EatWellView().tag(2)
            SleepQualityView().tag(3)
            
        }
        .tabViewStyle(.page(indexDisplayMode: .never))
        
        .ignoresSafeArea()
        .background{
            AnimatedOnboardShape(progress: CGFloat(page), offsetY: -435)
                .fill(.appWhite)
                .animation(.easeInOut, value: page)
                .background(BackgroundGradient.gradient)
                .ignoresSafeArea()
        }
    }
}

#Preview {
    OnboardingView()
}
