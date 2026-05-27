//
//  DatePicker.swift
//  DIDPOOLFit
//
//  Created by admin on 22.05.2026.
//

import SwiftUI

struct RoundedDatePicker: View {
    
    @Binding var date: Date
    
    @State private var didDatePick = false
    @State private var showPicker = false {
        didSet {
            if showPicker {
                didDatePick = true
            }
        }
    }
    
    var body: some View {
        ZStack(alignment: .top){
            VStack(spacing: 0){
                HStack(spacing: 10){
                    Image(.calendar)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 18, height: 18)
                        .foregroundStyle(.gray1)
                    
                    Text(!didDatePick ? "Date Of Birth" : date.formattedDate)
                        .multilineTextAlignment(.leading)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .foregroundStyle(!didDatePick ? .gray2 : .appBlack)
                        .font(.footnote)
                }
                
                
                DatePicker("", selection: $date, displayedComponents: .date)
                    .frame(maxHeight: showPicker ? .infinity : 0)
                    .datePickerStyle(.graphical)
                    .labelsHidden()
                    .opacity(showPicker ? 1 : 0)
            }
            .padding(15)
            .background{
                RoundedRectangle(cornerRadius: 14)
                    .fill(Color(.border))
            }
            
            Button {
                showPicker.toggle()
            } label: {
                ZStack{
                    if showPicker {
                        Image(.dropdown)
                            .resizable()
                            .scaledToFit()
                            .rotationEffect(Angle(degrees: 180))
                            .frame(height: 18)
                            .frame(maxWidth: .infinity, maxHeight: 48, alignment: .trailing)
                            .foregroundStyle(.blue)
                            .padding(.trailing, 15)
                    }
                    
                    Text("")
                        .frame(maxWidth: .infinity, maxHeight: 48, alignment: .trailing)
                }
                
            }
        }
        .background{
            RoundedRectangle(cornerRadius: 14)
                .fill(Color(.border))
        }
    }
}

#Preview {
    Register2View()
}
