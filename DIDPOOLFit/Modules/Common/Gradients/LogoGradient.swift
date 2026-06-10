//
//  LogoGradient.swift
//  DIDPOOLFit
//
//  Created by admin on 20.05.2026.
//

import SwiftUI

struct LogoGradient: View {
    
    var body: some View {
        Self.gradient
            .ignoresSafeArea()
    }
    
    static let gradient = LinearGradient(
        colors: [.logoLinearLeft, .logoLinearRight],
        startPoint: UnitPoint(x: -0.5, y: -0.5),
        endPoint: UnitPoint(x: 2, y: 2)
    )
}
