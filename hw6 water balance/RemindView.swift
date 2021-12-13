//
//  RemindView.swift
//  hw6 water balance
//
//  Created by Leyla Nyssanbayeva on 12.12.2021.
//

import SwiftUI

struct RemindView: View {
    var body: some View {
        VStack(spacing: 0){
            HStack{
                Image(systemName: "chevron.left")
                    .foregroundColor(MyColor.marineBlue)
                    .frame(width: 18, height: 24)
                    .padding(.bottom, 30)
                    .padding(.top, 65)
                Spacer()
            }
            
            title(text: "WATER BALANCE")
                .padding(.bottom, 62)
                .ignoresSafeArea()
            
            Text("Remind me each")
                .font(Font.system(size: 36, weight: .semibold))
                .padding(.bottom, 32)
            
            ZStack{
                RoundedRectangle(cornerRadius: 16)
                    .foregroundColor(MyColor.skyBlue)
                    .frame(height: 330)
                    .padding(.bottom, 116)
                
                VStack{
                    HStack(spacing: 14){
                        TimeChoiseCustom(title: "15 minutes")
                        TimeChoiseCustom(title: "30 minutes")
                    }
                    .padding(.horizontal, 19)
                    
                    HStack(spacing: 14){
                        TimeChoiseCustom(title: "45 minutes")
                        TimeChoiseCustom(title: "1 hour")
                    }
                    .padding(.horizontal, 19)
                    
                    HStack(spacing: 14){
                        TimeChoiseCustom(title: "1,5 hours")
                        TimeChoiseCustom(title: "2 hours")
                    }
                    .padding(.horizontal, 19)
                    
                    HStack(spacing: 14){
                        TimeChoiseCustom(title: "3 hours")
                        TimeChoiseCustom(title: "4 hours")
                    }
                    .padding(.horizontal, 19)
                    Spacer()
                }
                .padding(.top, 30)
            }
            NextButton(action: {})
                .padding(.bottom, 50)
        }
        .padding(.horizontal, 16)
    }
}

struct RemindView_Previews: PreviewProvider {
    static var previews: some View {
        RemindView()
    }
}
