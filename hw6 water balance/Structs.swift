import SwiftUI


// DailyIntakeView
struct MyTextFieldStyle: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .background(
                RoundedRectangle(cornerRadius: 16)
                    .foregroundColor(.white)
                    .frame(height: 60)
            )
    }
}

struct title: View{
    var text: String = ""
    
    var body: some View{
        Text(text)
            .font(Font.system(size: 24, weight: .black))
            .italic()
            .foregroundColor(MyColor.marineBlue)
    }
}

// HistoryView
struct miniTitle: View{
    var text: String = ""
    
    var body: some View{
        Text(text)
            .font(Font.system(size: 17, weight: .black))
            .italic()
            .foregroundColor(MyColor.marineBlue)
    }
}

struct ElementHistory: View{
    var waterCapacity = ""
    var time: String = ""
    
    var body: some View{
        HStack{
            Text(self.waterCapacity)
                .font(Font.system(size: 17))
            Spacer()
            Text(self.time)
                .foregroundColor(Color.gray)
        }
        .padding(.bottom, 34)
        Image("Separator")
    }
}

// MainTabView
struct ProgressInformation: View{
    var done: Double = 0
    var total: Double = 0
    var body: some View{
        VStack{
            let percent = String((self.done * 100 / self.total).rounded())
            Text("\(percent)%")
                .font(Font.system(size: 36, weight: .semibold))
            let s = String(format: "%.1f", self.done)
            let s1 = String(format: "%.1f", self.total)
            Text("\(s) out of \(s1) L")
                .font(Font.system(size: 16, weight: .light))
        }
    }
}

// RemindView

struct TimeChoiseCustom: View{
    var title: String = ""
    
    var body: some View{
        ZStack{
            RoundedRectangle(cornerRadius: 16)
                .frame(height: 60)
                .foregroundColor(.white)
            
            HStack{
                Text(title)
                    .foregroundColor(.black)
                    .font(Font.system(size: 16, weight: .semibold))
            }
            .padding(.horizontal, 24)
        }
    }
}

// GoalView

struct ChoiseCustom: View{
    var title: String = ""
    
    var body: some View{
        ZStack{
            RoundedRectangle(cornerRadius: 16)
                .frame(height: 60)
                .foregroundColor(.white)
                .padding(.horizontal, 19)
            
            HStack{
                Text(title)
                    .foregroundColor(.black)
                    .font(Font.system(size: 16, weight: .semibold))
                Spacer()
                Image(systemName: "circle.circle")
            }
            .padding(.horizontal, 43)
        }
    }
}

//struct CustomTextField: View{
//    var placeholder: Text
//    @Binding var text: String
//
//    var body: some View{
//        ZStack(alignment: .leading){
//            if text.isEmpty{
//                placeholder.foregroundColor(.blue)
//            }
//            TextField("", text: $text)
//        }
//    }
//}
