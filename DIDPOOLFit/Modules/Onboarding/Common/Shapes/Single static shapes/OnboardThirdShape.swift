//
//  OnboardFirstShape.swift
//  DIDPOOLFit
//
//  Created by admin on 19.05.2026.
//

import SwiftUI

struct OnboardThirdShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        let w = rect.size.width
        let h = rect.size.height
        
        path.move(to: CGPoint(x: 0, y: 0.475 * h))

        path.addCurve(
            to: CGPoint(x: 0.12027 * w, y: 0.67263 * h),
            control1: CGPoint(x: 0, y: 0.475 * h),
            control2: CGPoint(x: 0.05973 * w, y: 0.4843 * h)
        )

        path.addCurve(
            to: CGPoint(x: 0.56791 * w, y: h),
            control1: CGPoint(x: 0.1808 * w, y: 0.86095 * h),
            control2: CGPoint(x: 0.3488 * w, y: h)
        )

        path.addCurve(
            to: CGPoint(x: w, y: 0.33997 * h),
            control1: CGPoint(x: 0.88702 * w, y: h),
            control2: CGPoint(x: w, y: 0.53803 * h)
        )

        path.addLine(to: CGPoint(x: w, y: h))
        path.addLine(to: CGPoint(x: 0, y: h))
        
        path.closeSubpath()
        
        return path
    }
}

#Preview {
    EatWellView()
}
