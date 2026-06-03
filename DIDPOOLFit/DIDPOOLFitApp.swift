//
//  DIDPOOLFitApp.swift
//  DIDPOOLFit
//
//  Created by admin on 18.05.2026.
//

import SwiftUI

@main
struct DIDPOOLFitApp: App {
    
    @State var needAuth: Bool = false
    
    var body: some Scene {
        WindowGroup {
            if needAuth{
                NavigationStack{
                    WelcomeView()
                }
            } else {
                MainView()
            }
        }
    }
}
