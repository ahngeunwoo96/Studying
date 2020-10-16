//
//  MyView.swift
//  SwiftUI_stack_practice_tutorial
//
//  Created by Ahngeunwoo on 2020/10/16.
//

import SwiftUI

struct MyView : View {
    
    var title : String
    
    var bgColor: Color
    
    var body: some View {
        ZStack {
            bgColor
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            Text(title)
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundColor(Color.white)
        }
 
    }
}

struct MyView_Previews: PreviewProvider {
    static var previews: some View {
        MyView(title: "1번", bgColor: Color.orange)
        
    }
}
