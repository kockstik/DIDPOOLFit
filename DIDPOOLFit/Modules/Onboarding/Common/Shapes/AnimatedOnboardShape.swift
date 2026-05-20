//
//  AnimatedOnboardShape.swift
//  DIDPOOLFit
//
//  Created by admin on 20.05.2026.
//

import SwiftUI

struct AnimatedOnboardShape: Shape {
    
    var progress: CGFloat = 0
    var offsetY: CGFloat = 0
    
    var animatableData: AnimatablePair<CGFloat, CGFloat> {
        get { .init(progress, offsetY) }
        set {
            progress = newValue.first
            offsetY = newValue.second
        }
    }
    
    func path(in rect: CGRect) -> Path {
        let w = rect.width
        let h = rect.height
        
        let curves = [
            firstCurve,
            secondCurve,
            thirdCurve,
            fourCurve
        ]
        
        let from = max(0, min(Int(progress), curves.count - 1))
        let to = min(from + 1, curves.count - 1)
        let t = progress - CGFloat(from)
        
        let interpolated = zip(curves[from], curves[to])
            .map {
                interpolate(
                    from: $0,
                    to: $1,
                    progress: t
                )
            }
        
        var path = Path()
        
        let startY = lerp(
            curves[from][0].c1.y,
            curves[to][0].c1.y,
            t
        )
        
        path.move(
            to: CGPoint(
                x: 0,
                y: startY * h + offsetY
            )
        )
        
        for curve in interpolated {
            path.addCurve(
                to: curve.end.scaled(w, h, offsetY),
                control1: curve.c1.scaled(w, h, offsetY),
                control2: curve.c2.scaled(w, h, offsetY)
            )
        }
        
        
        path.addLine(to: CGPoint(x: w, y: h))
        path.addLine(to: CGPoint(x: 0, y: h))
        
        path.closeSubpath()
        return path
    }
    
    private func interpolate(
        from: Curve,
        to: Curve,
        progress: CGFloat
    ) -> Curve {
        
        .init(
            c1: from.c1.lerp(to.c1, progress),
            c2: from.c2.lerp(to.c2, progress),
            end: from.end.lerp(to.end, progress)
        )
    }
    
    private func lerp(
        _ a: CGFloat,
        _ b: CGFloat,
        _ t: CGFloat
    ) -> CGFloat {
        a + (b - a) * t
    }
    
    var firstCurve: [Curve] {
        [
            .init(
                c1: CGPoint(x: 0, y: 1),
                c2: CGPoint(x: 0, y: 1),
                end: CGPoint(x: 0, y: 0.898)
            ),
            
            .init(
                c1: CGPoint(x: 0.20, y: 0.962),
                c2: CGPoint(x: 0.35, y: 0.966),
                end: CGPoint(x: 0.5, y: 0.969)
            ),
        
            .init(
                c1: CGPoint(x: 0.62, y: 0.966),
                c2: CGPoint(x: 0.8, y: 0.941),
                end: CGPoint(x: 1, y: 0.75)
            )
        ]
    }
    
    var secondCurve : [Curve] {
        [
            .init(
                c1: CGPoint(x: 0, y: 0.5),
                c2: CGPoint(x: 0, y: 0.5),
                end: CGPoint(x: 0, y: 0.753)
            ),
            
            .init(
                c1: CGPoint(x: 0.12, y: 0.65),
                c2: CGPoint(x: 0.305, y: 0.495),
                end: CGPoint(x: 0.5, y: 0.66)
            ),
        
            .init(
                c1: CGPoint(x: 0.87, y: 0.96),
                c2: CGPoint(x: 0.91, y: 0.68),
                end: CGPoint(x: 1, y: 0.708)
            ),
        ]
    }
    
    var thirdCurve: [Curve] {
        [
            .init(
                c1: CGPoint(x: 0, y: 0.9),
                c2: CGPoint(x: 0, y: 0.9),
                end: CGPoint(x: 0, y: 0.712)
            ),
            
                .init(
                    c1: CGPoint(x: 0.17, y: 0.76),
                    c2: CGPoint(x: 0.07, y: 0.884),
                    end: CGPoint(x: 0.35, y: 0.972)
                ),
            
                .init(
                    c1: CGPoint(x: 0.63, y: 1.05),
                    c2: CGPoint(x: 0.952, y: 0.965),
                    end: CGPoint(x: 1, y: 0.64)
                )
        ]
    }
    
    var fourCurve: [Curve] {
        [
            .init(
                c1: CGPoint(x: 0, y: 0.9),
                c2: CGPoint(x: 0, y: 0.9),
                end: CGPoint(x: 0, y: 0.7)
            ),
            
            .init(
                c1: CGPoint(x: -0.012, y: 0.545),
                c2: CGPoint(x: 0.08, y: 0.55),
                end: CGPoint(x: 0.089, y: 0.55)
            ),
        
            .init(
                c1: CGPoint(x: 0.27, y: 0.545),
                c2: CGPoint(x: 0.61, y: 1.12),
                end: CGPoint(x: 1, y: 0.872)
            )
        ]
    }
}

struct Curve {
    let c1: CGPoint
    let c2: CGPoint
    let end: CGPoint
}

private extension CGPoint {
    
    func lerp(
        _ target: CGPoint,
        _ t: CGFloat
    ) -> CGPoint {
        
        .init(
            x: x + (target.x - x) * t,
            y: y + (target.y - y) * t
        )
    }
    
    func scaled(
        _ w: CGFloat,
        _ h: CGFloat,
        _ offset: CGFloat
    ) -> CGPoint {
        
        .init(
            x: x * w,
            y: y * h + offset
        )
    }
}

#Preview {
    OnboardingView()
}
