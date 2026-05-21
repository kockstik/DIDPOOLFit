//
//  Onboarding.swift
//  DIDPOOLFit
//
//  Created by admin on 18.05.2026.
//

import SwiftUI

struct OnboardingView: View{
    
    @State private var page = 0
    @State private var showRegisterView = false
    
    var body: some View {
        ZStack{
            TabView(selection: $page){
                TrackYourGoalView().tag(0)
                GetBurnView().tag(1)
                EatWellView().tag(2)
                SleepQualityView().tag(3)
                
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .ignoresSafeArea()
        .background{
            AnimatedOnboardShape(progress: CGFloat(page), offsetY: -435)
                .fill(.appWhite)
                .animation(.easeInOut(duration: 0.4), value: page)
                .background(BackgroundGradient.gradient)
                .ignoresSafeArea()
        }
        .overlay(alignment: .bottomTrailing) {
            ProgressButton(progress: CGFloat(page) / 4){
                if page < 3 {
                    withAnimation {
                        page = min(page + 1, 3)
                    }
                } else {
                    showRegisterView = true
                }
            }
                .padding(.bottom, 40)
                .padding(.trailing, 30)
        }
        .navigationDestination(isPresented: $showRegisterView) {
            Register1View()
        }
    }
}

#Preview {
    OnboardingView()
}
