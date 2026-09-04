//
//  HeartRatePanel.swift
//  DIDPOOLFit
//
//  Created by admin on 28.07.2026.
//

import SwiftUI
import Charts

struct HeartRatePoint: Hashable {
    let time: Double
    let rate: Int
}

struct HeartRatePanel: View{
    
    let data: [HeartRatePoint] = [
        .init(time: 8, rate: 65),
        .init(time: 8.5, rate: 70),
        .init(time: 9, rate: 60),
        .init(time: 9.5, rate: 90),
        .init(time: 10.0, rate: 65),
        .init(time: 10.5, rate: 80),
        .init(time: 11, rate: 70),
        .init(time: 11.5, rate: 65),
        .init(time: 12, rate: 80),
        .init(time: 12.5, rate: 60),
        .init(time: 13.0, rate: 65),
        .init(time: 13.5, rate: 90),
        .init(time: 14, rate: 60),
        .init(time: 14.5, rate: 65),
        .init(time: 15, rate: 80),
        .init(time: 15.5, rate: 120),
        .init(time: 16.0, rate: 65),
        .init(time: 16.5, rate: 90),
        .init(time: 17, rate: 85),
        .init(time: 17.5, rate: 65),
        .init(time: 18, rate: 80),
        .init(time: 18.5, rate: 100),
        .init(time: 19.0, rate: 95),
        .init(time: 19.5, rate: 100),
        .init(time: 20, rate: 90),
        .init(time: 20.5, rate: 75),
        .init(time: 21, rate: 80),
        .init(time: 21.5, rate: 60),
        .init(time: 22, rate: 80),
        .init(time: 22.5, rate: 60),
        .init(time: 23, rate: 90),
        .init(time: 23.5, rate: 110),
        .init(time: 24, rate: 100),
    ]
    
    var body: some View{
        ZStack {
            VStack(spacing: 5) {
                Text("Heart Rate")
                    .font(.footnote).bold()
                    .frame(maxWidth: .infinity, alignment: .leading)
                Text("78 BPM")
                    .font(.body).bold()
                    .foregroundStyle(BackgroundGradient.gradient)
                    .frame(maxWidth: .infinity, alignment: .leading)
                Spacer()
            }
            .padding(20)
            
            let minValue = (data.map(\.rate).min() ?? 0) - 25
            let maxValue = (data.map(\.rate).max() ?? 150) + 10
            
            let start = data.map(\.time).min() ?? 0
            let end = start + 16
            
            Chart {
                ForEach(data, id: \.self) { point in
                    AreaMark(x: .value("", point.time), y: .value("", point.rate))
                        .foregroundStyle(BackgroundGradient.gradient)
                        .mask{
                            RectangleMark(x: .value("", start), y: .value("", maxValue), width: 900, height: 150)
                                .foregroundStyle(
                                    LinearGradient(colors: [.white, .clear], startPoint: .top, endPoint: .bottom)
                                )
                        }
        
                    LineMark(x: .value("", point.time), y: .value("", point.rate))
                }
            }
            .foregroundStyle(BackgroundGradient.gradient)
            .chartYScale(domain: minValue...maxValue)
            .chartXScale(domain: start...end)
            .chartYAxis(.hidden)
            .chartXAxis(.hidden)
            .padding(.top, 50)
            
        }
        .frame(maxWidth: .infinity, maxHeight: 150)
        .background{
            RoundedRectangle(cornerRadius: 16)
                .fill(BackgroundGradient.gradient)
                .opacity(0.2)
        }
    }
}

#Preview {
    HeartRatePanel()
}
