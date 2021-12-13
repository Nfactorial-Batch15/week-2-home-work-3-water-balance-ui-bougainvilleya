//
//  HistoryView.swift
//  hw6 water balance
//
//  Created by Leyla Nyssanbayeva on 12.12.2021.
//

import SwiftUI

struct HistoryView: View {
    var body: some View {
        VStack(spacing: 0){
            // go to Structs.Swift for the details
            miniTitle(text: "TODAY")
                .padding(.top, 28)
                .padding(.bottom, 41)
    
            ElementHistory(waterCapacity: "250 ml", time: "12:13")
            ElementHistory(waterCapacity: "200 ml", time: "14:10")
            ElementHistory(waterCapacity: "50 ml", time: "15:13")
            ElementHistory(waterCapacity: "300 ml", time: "19:10")
            
            Spacer()
        }
        .padding(.horizontal, 16)
        .tabItem{
            Label("History", systemImage: "doc")
        }
        .tag(2)
    }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView()
    }
}
