//
//  ContentView.swift
//  SwiftUI_Picker_tutorial
//
//  Created by Ahngeunwoo on 2020/10/27.
//

import SwiftUI


struct ContentView: View {
    
    @State private var selectionValue = 0
    
    let myColorArray = ["레드", "그린", "블루"]
    
    func changeColor(index: Int) -> Color {
        switch index {
        case 0:
            return Color.red
        case 1:
            return Color.green
        case 2:
            return Color.blue
        default:
            return Color.red
        }
    }
    
    var body: some View {
        VStack(alignment : .center) {
            
            Circle()
                .frame(width :50, height : 50)
                .foregroundColor(changeColor(index: selectionValue))
            
            Text("세그먼트 value : \(selectionValue)")
            
            Text("선택된 색깔 : \(myColorArray[selectionValue])")
            
            Picker("피커", selection: $selectionValue, content: {
                Text("레드").tag(0)
                Text("그린").tag(1)
                Text("블루").tag(2)
            })
            .pickerStyle(SegmentedPickerStyle())
            
            Picker("피커", selection: $selectionValue, content: {
                Text("레드").tag(0)
                Text("그린").tag(1)
                Text("블루").tag(2)
            })
            .frame(width : 50, height : 100)
            .clipped()
            .padding(10)
            .border(changeColor(index: selectionValue), width : 10)
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
