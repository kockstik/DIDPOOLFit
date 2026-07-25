//
//  BMIPlane.swift
//  DIDPOOLFit
//
//  Created by admin on 10.06.2026.
//

import SwiftUI

struct BMIPlane: View {
    var body: some View {
        ZStack{
            
            HStack(alignment: .center, spacing: 7){
                VStack(alignment: .leading, spacing: 5){
                    Text("BMI (Body Mass Index)")
                        .font(.body).bold()
                        .foregroundColor(.white)
                    Text("You have a normal weight")
                        .font(.footnote)
                        .foregroundColor(.white)
                    
                    RoundedButton(title: "View More", fontSize: 10)
                        .frame(width: 95, height: 35)
                        .padding(.top, 10)
                }
                
                CircleProgress(progress: 0.3)
            }
            .padding(20)
        }
        .background(BackgroundGradient.gradient)
        .cornerRadius(22)
    }
}

#Preview {
    BMIPlane()
}
