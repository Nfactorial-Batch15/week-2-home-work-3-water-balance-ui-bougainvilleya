//
//  DailyIntakeView.swift
//  hw6 water balance
//
//  Created by Leyla Nyssanbayeva on 12.12.2021.
//

import SwiftUI

struct DailyIntakeView: View {
    var body: some View {
        VStack(spacing: 0){
            chevronLeft
            
            title(text: "WATER BALANCE")
                .padding(.bottom, 62)
                .ignoresSafeArea()
            
            Text("Daily intake?")
                .font(Font.system(size: 36, weight: .semibold))
                .padding(.bottom, 32)
            
            ZStack{
                RoundedRectangle(cornerRadius: 16)
                    .foregroundColor(MyColor.skyBlue)
                    .frame(height: 108)
                
                HStack(spacing: 12){
                    TextField("2500", text: .constant(""))
                        .textFieldStyle(MyTextFieldStyle())
                        .keyboardType(.numberPad)
                        .multilineTextAlignment(.center)
                        .padding(.leading, 19)
                    
                    Text("ML")
                        .font(Font.system(size: 16))
                        .padding(.trailing, 43)
                }
            }
            Spacer()
            SaveButton(action: {})
        }
        .padding(.horizontal, 16)
    }
    
    var chevronLeft: some View{
        HStack{
            Image(systemName: "chevron.left")
                .foregroundColor(MyColor.marineBlue)
                .frame(width: 18, height: 24)
                .padding(.bottom, 30)
                .padding(.top, 28)
            Spacer()
        }
    }
}

struct DailyIntakeView_Previews: PreviewProvider {
    static var previews: some View {
        DailyIntakeView()
    }
}
