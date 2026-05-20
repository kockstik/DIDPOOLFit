//
//  OnboardFirstShape.swift
//  DIDPOOLFit
//
//  Created by admin on 19.05.2026.
//

import SwiftUI

struct OnboardFourShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        let w = rect.size.width
        let h = rect.size.height
        
        path.move(to: CGPoint(x: 0, y: 0.41997 * h))

        path.addCurve(
            to: CGPoint(x: 0.11396 * w, y: 0.21564 * h),
            control1: CGPoint(x: 0, y: 0.30997 * h),
            control2: CGPoint(x: 0.03689 * w, y: 0.18259 * h)
        )

        path.addCurve(
            to: CGPoint(x: 0.78595 * w, y: 0.99746 * h),
            control1: CGPoint(x: 0.22142 * w, y: 0.26165 * h),
            control2: CGPoint(x: 0.49689 * w, y: 0.99746 * h)
        )

        path.addCurve(
            to: CGPoint(x: w, y: 0.86888 * h),
            control1: CGPoint(x: 0.93413 * w, y: 0.99746 * h),
            control2: CGPoint(x: w, y: 0.86888 * h)
        )

        path.addLine(to: CGPoint(x: w, y: h))
        path.addLine(to: CGPoint(x: 0, y: h))
        
        path.closeSubpath()
        return path
    }
}

#Preview {
    SleepQualityView()
}
