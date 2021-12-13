//
//  GoalView.swift
//  hw6 water balance
//
//  Created by Leyla Nyssanbayeva on 12.12.2021.
//

import SwiftUI

struct GoalView: View {
    var body: some View {
        VStack(spacing: 0){
            title(text: "WATER BALANCE")
                .padding(.bottom, 62)
                .padding(.top, 118)
            
            Text("What is your goal?")
                .font(Font.system(size: 36, weight: .semibold))
                .padding(.bottom, 32)
            
            ZStack{
                RoundedRectangle(cornerRadius: 16)
                    .foregroundColor(MyColor.skyBlue)
                    .frame(height: 330)
                    .padding(.bottom, 116)
                
                VStack(spacing: 14){
                    ChoiseCustom(title: "Goal number One")
                    ChoiseCustom(title: "Goal number Two")
                    ChoiseCustom(title: "Goal number Three")
                    ChoiseCustom(title: "Goal number Four")
                    Spacer()
                }
                .padding(.top, 24)
            }
            NextButton(action: {})
                .padding(.bottom, 40)
        }
        .padding(.horizontal, 16)
    }
}

struct GoalView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            GoalView()
            GoalView()
        }
    }
}
