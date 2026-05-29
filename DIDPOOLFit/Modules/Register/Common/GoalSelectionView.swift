//
//  GoalSelectionView.swift
//  DIDPOOLFit
//
//  Created by admin on 27.05.2026.
//

import SwiftUI

struct GoalSelectionView: View {
    
    var cards: [GoalCardDTO] = [
        GoalCardDTO(image: .goal1, name: "Improve Shape", description: "I have a low amount of body fat and need / want to build more muscle"),
        GoalCardDTO(image: .goal2, name: "Lean & Tone", description: "I have a low amount of body fat and need / want to build more muscle"),
        GoalCardDTO(image: .goal3, name: "Lose a Fat", description: "I have a low amount of body fat and need / want to build more muscle"),
    ]
    
    var body: some View {
        GeometryReader { screen in
            ScrollView(.horizontal){
                LazyHStack(spacing: -5){
                    ForEach(cards, id: \.self){ card in
                        GeometryReader { geo in
                            let cardCenter = geo.frame(in: .global).midX
                            let screenCenter = screen.size.width / 2
                            let distance = abs(screenCenter - cardCenter) * 0.7
                            let progress = distance / screen.size.width
                            let scale = max(0.75, 1 - progress)
                            let opacity = max(0.3, 1 - progress)
                            let offset = progress * 40
                            
                            GoalCardView(image: Image(uiImage: card.image), name: card.name, description: card.description)
                                .scaleEffect(scale)
                                .opacity(opacity)
                                .offset(y: offset)
                            
                        }
                        .frame(width: 275)
                    }
                }
                .scrollTargetLayout()
                .padding(.horizontal, (screen.size.width - 275) * 0.5)
            }
            .scrollTargetBehavior(.viewAligned(limitBehavior: .always))
            .scrollIndicators(.hidden)
        }
    }
}

#Preview {
    GoalSelectionView()
}
