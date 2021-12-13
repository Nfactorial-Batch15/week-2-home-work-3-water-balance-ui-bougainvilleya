//
//  SettingsView.swift
//  hw6 water balance
//
//  Created by Leyla Nyssanbayeva on 12.12.2021.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        VStack(spacing: 0){
            miniTitle(text: "EDIT")
                .padding(.top, 28)
                .padding(.bottom, 41)
            
            HStack{
                Text("Daily Intake Level")
                    .font(Font.system(size: 17))
                Spacer()
                Text("2400 ML")
                    .foregroundColor(.gray)
                CustomNavigationButton(action: { print("tap") })
            }
            .padding(.bottom, 34)

            HStack{
                Text("200 ml")
                    .font(Font.system(size: 17))
                Spacer()
                CustomNavigationButton(action: { print("tap") })
            }
            .padding(.bottom, 34)
            

            HStack{
                Text("Reminder")
                    .font(Font.system(size: 17))
                Spacer()
                CustomNavigationButton(action: { print("tap") })
            }
            .padding(.bottom, 34)
            
            Spacer()
        }
        .padding(.horizontal, 16)
        .tabItem{
            Label("Settings", systemImage: "gear")
        }
        .tag(2)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
