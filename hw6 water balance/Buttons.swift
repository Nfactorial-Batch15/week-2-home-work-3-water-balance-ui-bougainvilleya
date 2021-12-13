//
//  Buttons.swift
//  hw6 water balance
//
//  Created by Leyla Nyssanbayeva on 13.12.2021.
//

import SwiftUI

struct AddButton: View{
    let action: () -> Void

    var body: some View {
        Button {
            action()
            print("tap")
        } label: {
            ZStack{
                RoundedRectangle(cornerRadius: 16)
                    .foregroundColor(MyColor.electricBlue)
                    .frame(height: 60)
                
                Text("Add")
                    .font(Font.system(size: 22, weight:.semibold))
                    .foregroundColor(.white)
            }
        }
    }
}

struct SaveButton: View{
    let action: () -> Void

    var body: some View {
        Button {
            action()
            print("tap")
        } label: {
            ZStack{
                RoundedRectangle(cornerRadius: 16)
                    .foregroundColor(MyColor.electricBlue)
                    .frame(height: 60)
                
                Text("Save")
                    .font(Font.system(size: 22, weight:.semibold))
                    .foregroundColor(.white)
            }
        }
    }
}

struct NextButton: View{
    let action: () -> Void

    var body: some View {
        Button {
            print("tap")
        } label: {
            ZStack{
                RoundedRectangle(cornerRadius: 16)
                    .foregroundColor(MyColor.electricBlue)
                    .frame(height: 60)
                
                Text("Next")
                    .font(Font.system(size: 22, weight:.semibold))
                    .foregroundColor(.white)
            }
        }
    }
}

// SettingsView
struct CustomNavigationButton: View {
    let action: () -> Void

    var body: some View {
        Button {
            action()
        } label: {
            Image(systemName: "chevron.right")
                .foregroundColor(.gray)
        }
    }
}
