//
//  BackgroundGradient.swift
//  DIDPOOLFit
//
//  Created by admin on 18.05.2026.
//

import SwiftUI

struct BackgroundGradient: View {
    
    var body: some View {
        Self.gradient
            .ignoresSafeArea()
    }
    
    static let gradient = LinearGradient(
        colors: [.purpleLinearLeft, .purpleLinearRight],
        startPoint: UnitPoint(x: -1.3, y: 0.5),
        endPoint: UnitPoint(x: 0.8, y: 0.7)
    )
}
