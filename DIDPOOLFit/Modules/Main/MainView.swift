//
//  MainView.swift
//  DIDPOOLFit
//
//  Created by admin on 3.06.2026.
//

import SwiftUI

struct MainView: View{
    
    @State private var selectedTab: Int = 0
    
    var body: some View{
        VStack(spacing: 0){
            TabView(selection: $selectedTab){
                NavigationStack{ HomeView() }
                    .tag(0)
                NavigationStack{ HomeView() }
                    .tag(1)
                NavigationStack{ HomeView() }
                    .tag(2)
                NavigationStack{ HomeView() }
                    .tag(3)
            }
            .toolbar(.hidden)
            
            Navbar()
        }
    }
}

#Preview {
    MainView()
}
