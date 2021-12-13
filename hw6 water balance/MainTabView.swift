//
//  MainTabView.swift
//  hw6 water balance
//
//  Created by Leyla Nyssanbayeva on 12.12.2021.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        VStack(spacing: 0){
            miniTitle(text: "WATER BALANCE")
                .padding(.top, 28)
                .padding(.bottom, 30)
            
            ZStack{
                backgroundRectangle
                VStack{
                    ZStack{
                        Circle()
                            .stroke(Color.white, lineWidth: 4)
                            .frame(width: 180, height: 180)
                        
                        Circle()
                            .fill(MyColor.skyBlue)
                            .frame(width: 160, height: 160)
                        
                        ProgressInformation(done: 0.0, total: 2.4)
                    }
                    .padding(.top, 42)
                    Spacer()
                    Text("Monday, 25th of November")
                        .font(Font.system(size: 17, weight: .light))
                        .padding(.bottom, 60)
                }
                
            }
            
            Text("Add your first drink for today")
                .font(Font.system(size: 36, weight: .semibold))
                .foregroundColor(.black)
                .fixedSize(horizontal: false, vertical: true)
                .multilineTextAlignment(.center)
                .padding(.top, 20)
            
            AddButton(action: {})
                .padding(.top, 85)
                .padding(.bottom, 67)
            
        }
        .padding(.horizontal, 16)
        .tabItem{
            Label("Main", systemImage: "house")
        }
        .tag(1)
    }
    
    var backgroundRectangle: some View{
        RoundedRectangle(cornerRadius: 16)
            .fill(
                LinearGradient(gradient: Gradient(colors: [.white, MyColor.skyBlue]),
                               startPoint: .bottom,
                               endPoint: .top))
            .frame(height: 330)
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
