//
//  ContentView.swift
//  SwiftUI_Stacks_tutorial
//
//  Created by Ahngeunwoo on 2020/10/04.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack(alignment:.center, spacing: 10) {
            
            Spacer()
            
            Text("신호등")
                .font(.system(size: 30))
                .fontWeight(.heavy)
                .foregroundColor(.white)
            
            // Stack의 정렬을 도형에도 적용하려면 Divider()를 해야함
            Divider()
                .opacity(0)
            
            Rectangle()
                .frame(width : 100, height: 100)
                .foregroundColor(.red)
            Rectangle()
                .frame(width : 100, height: 100)
                .foregroundColor(.yellow)
            Rectangle()
                .frame(width : 100, height: 100)
                .foregroundColor(.green)
            
            // 아래에 공간을 만듬
            Spacer()
            Spacer()
            
        } // VStack
        .frame(width: 150)
        .background(Color.black)
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
