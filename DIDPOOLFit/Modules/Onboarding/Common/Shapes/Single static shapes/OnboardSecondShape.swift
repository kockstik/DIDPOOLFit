//
//  OnboardFirstShape.swift
//  DIDPOOLFit
//
//  Created by admin on 19.05.2026.
//

import SwiftUI

struct OnboardSecondShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        let w = rect.size.width
        let h = rect.size.height
        
        path.move(to: CGPoint(x: 0, y: 0.86333*h))
        
        path.addCurve(
            to: CGPoint(x: 0.32542 * w, y: 0.41296 * h),
            control1: CGPoint(x: 0, y: 0.86333 * h),
            control2: CGPoint(x: 0.15849 * w, y: 0.41296 * h)
        )

        path.addCurve(
            to: CGPoint(x: 0.77618 * w, y: 0.99882 * h),
            control1: CGPoint(x: 0.49235 * w, y: 0.41296 * h),
            control2: CGPoint(x: 0.60925 * w, y: 0.99882 * h)
        )

        path.addCurve(
            to: CGPoint(x: w, y: 0.75187 * h),
            control1: CGPoint(x: 0.94311 * w, y: 0.99882 * h),
            control2: CGPoint(x: 0.92462 * w, y: 0.70387 * h)
        )
        
        path.addLine(to: CGPoint(x: w, y: h))
        path.addLine(to: CGPoint(x: 0, y: h))
        
        path.closeSubpath()
        
        return path
    }
}
