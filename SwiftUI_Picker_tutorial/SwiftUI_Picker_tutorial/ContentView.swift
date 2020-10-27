//
//  ContentView.swift
//  SwiftUI_Picker_tutorial
//
//  Created by Ahngeunwoo on 2020/10/27.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selectionValue = 0
    
    @State private var pickerColor : String = "그린"
    
    var body: some View {
        VStack(alignment : .center, spacing : 0) {
            Circle()
                .frame(width :50, height : 50)
                .foregroundColor(Color.\(pickerColor))
                .padding(.bottom, 10)
            
            Text("세그먼트 value : \(selectionValue)")
                .padding(.bottom, 10)
            
            Text("선택된 색깔 : \(pickerColor)")
                .padding(.bottom, 10)
            
            Picker("피커", selection: $selectionValue, content: {
                Text("레드").tag(0)
                Text("그린").tag(1)
                Text("블루").tag(2)
            })
            .pickerStyle(SegmentedPickerStyle())
            
            Picker("피커", selection: $pickerColor, content: {
                Text("레드").tag(0)
                Text("그린").tag(1)
                Text("블루").tag(2)
            })
            .frame(width : 50, height : 100)
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
