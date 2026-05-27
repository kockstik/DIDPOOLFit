//
//  Register2View.swift
//  DIDPOOLFit
//
//  Created by admin on 21.05.2026.
//

import SwiftUI

struct Register2View: View {
    
    @State var gender: String = ""
    @State var date: Date = Date()
    @State var weight: String = ""
    @State var height: String = ""
    
    var body: some View {
        VStack(spacing: 30) {
            Image(.register2)
            
            Spacer()
            
            VStack(spacing: 5){
                Text("Let’s complete your profile")
                    .font(.title).bold()
                    .foregroundStyle(.appBlack)
                
                Text("It will help us to know more about you!")
                    .font(.footnote)
                    .foregroundStyle(.gray1)
            }
            
            VStack(spacing: 15) {
                GenderPicker()
                RoundedDatePicker(date: $date)
                HStack(spacing: 15){
                    Input(text: $weight, placeholder: "Your Weight", image: Image(.weight), keyboardType: .numberPad)
                    RoundedRectangle(cornerRadius: 14)
                        .fill(BackgroundGradient.gradient)
                        .frame(width: 48, height: 48)
                        .overlay{
                            Text("KG")
                                .foregroundStyle(.appWhite)
                                .font(.footnote)
                        }
                }
                HStack(spacing: 15){
                    Input(text: $height, placeholder: "Your Height", image: Image(.swap), keyboardType: .numberPad)
                    RoundedRectangle(cornerRadius: 14)
                        .fill(BackgroundGradient.gradient)
                        .frame(width: 48, height: 48)
                        .overlay{
                            Text("CM")
                                .foregroundStyle(.appWhite)
                                .font(.footnote)
                        }
                }
            }
            
            NavigationLink(destination: Register1View()){
                RoundedButton(title: "Next", trailingImage: Image(.arrowRight))
            }
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding(30)
        .padding(.bottom, 10)
        .padding(.top, 50)
        
    }
}

#Preview {
    Register2View()
}
