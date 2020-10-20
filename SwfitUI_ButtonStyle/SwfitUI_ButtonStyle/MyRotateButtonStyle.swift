//
//  MyButtonStyle.swift
//  SwfitUI_ButtonStyle
//
//  Created by Ahngeunwoo on 2020/10/20.
//

import SwiftUI


struct MyRotateButtonStyle : ButtonStyle {
    
    var color : Color
    
    func makeBody(configuration: Configuration) -> some View {
        
        configuration
            .label
            .font(.system(size: 20))
            .foregroundColor(Color.white)
            .padding()
            .background(self.color)
            .cornerRadius(20)
            .rotationEffect(configuration.isPressed ? .degrees(360) : .degrees(0), anchor: .center)
                
        }
// 버튼이 눌렸는지
//        configuration.isPressed
//
//        // 버튼 자신을 뜻함
//        configuration.self
}


struct MyRotateButtonStyle_Previews: PreviewProvider {
    
    static var previews: some View {
        Button(action: {
            print("button clicked!")
        }, label: {
            /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
        })
        .buttonStyle(MyRotateButtonStyle(color: Color.blue))
    }
}
