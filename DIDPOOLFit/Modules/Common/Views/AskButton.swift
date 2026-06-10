//
//  AskButton.swift
//  DIDPOOLFit
//
//  Created by admin on 21.05.2026.
//

import SwiftUI

struct AskButton: View {
    var question: String?
    var answer: String?
    var action: (() -> Void)?
    
    var body: some View {
        Button{
            action?()
        } label: {
            HStack(spacing: 5){
                if let question = question {
                    Text(question)
                        .font(.body)
                        .foregroundStyle(.appBlack)
                }
                if let answer = answer {
                    Text(answer)
                        .font(.body)
                        .foregroundStyle(BackgroundGradient.gradient).bold()
                }
            }
        }
        .allowsHitTesting(action != nil)
    }
}

#Preview {
    AskButton(question: "Already have an account?", answer: "Login")
}
