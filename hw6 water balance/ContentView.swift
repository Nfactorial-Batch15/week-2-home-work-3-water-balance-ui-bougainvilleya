//
//  ContentView.swift
//  hw6 water balance
//
//  Created by Leyla Nyssanbayeva on 11.12.2021.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab: Int = 1
    
    init() {
            let tabBarAppeareance = UITabBarAppearance()
            tabBarAppeareance.backgroundColor = .white
            UITabBar.appearance().standardAppearance = tabBarAppeareance
            }
    
    var body: some View {
        TabView(selection: $selectedTab){
            MainTabView()
            SettingsView()
            HistoryView()
        }.accentColor(MyColor.electricBlue)
            .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
