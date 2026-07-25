//
//  CircleProgress.swift
//  DIDPOOLFit
//
//  Created by admin on 10.06.2026.
//

import SwiftUI

struct CircleProgress: View {
    @State var progress = 0.3
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 999)
                .fill(.white)
                .frame(width: 88, height: 88)
            
            ProgressSector(progress: CGFloat(progress))
                .fill(BackgroundGradient.gradient)
                
        }
        .frame(width: 106, height: 106)
    }
}

#Preview {
    CircleProgress()
}
