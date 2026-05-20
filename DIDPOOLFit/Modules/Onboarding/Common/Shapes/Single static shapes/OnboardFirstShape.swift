//
//  OnboardFirstShape.swift
//  DIDPOOLFit
//
//  Created by admin on 19.05.2026.
//

import SwiftUI

struct OnboardFirstShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        let width = rect.size.width
        let height = rect.size.height
        
        path.move(to: CGPoint(x: width, y: 0.5835*height))
        
        path.addCurve(
            to: CGPoint(x: 0.5096*width, y: 0.99877*height),
            control1: CGPoint(x: width, y: 0.5835*height),
            control2: CGPoint(x: 0.80782*width, y: 0.98496*height)
        )
        
        path.addCurve(
            to: CGPoint(x: 0, y: 0.86333*height),
            control1: CGPoint(x: 0.21138*width, y: 1.01257*height),
            control2: CGPoint(x: 0, y: 0.86333*height)
        )
        
        path.addLine(to: CGPoint(x: 0, y: height))
        path.addLine(to: CGPoint(x: width, y: height))
        path.closeSubpath()
        
        return path
    }
}
