//
//  ProgressSector.swift
//  DIDPOOLFit
//
//  Created by admin on 30.06.2026.
//

import SwiftUI

struct ProgressSector: Shape{
    var progress: CGFloat
    
    func path(in rect: CGRect) -> Path {
        let center = CGPoint(x: rect.midX, y: rect.midY)
        let radius = rect.width / 2
        
        let start = Angle(degrees: 0)
        let end = Angle(degrees: -Double(progress) * 360)
        
        var path = Path()
        
        path.move(to: center)
        path.addArc(center: center, radius: radius, startAngle: end, endAngle: start, clockwise: false)
        path.closeSubpath()
        
        return path
    }
}
