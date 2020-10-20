//
//  MyButtonStyle.swift
//  SwfitUI_ButtonStyle
//
//  Created by Ahngeunwoo on 2020/10/20.
//

import SwiftUI


struct MySmallerButtonStyle : ButtonStyle {
    
    var color : Color
    
    func makeBody(configuration: Configuration) -> some View {
        
        configuration
            .label
            .font(.system(size: 20))
            .foregroundColor(Color.white)
            .padding()
            .background(self.color)
            .cornerRadius(20)
            .scaleEffect(configuration.isPressed ? 0.7 : 1)
            .opacity(configuration.isPressed ? 0.5 : 1)
                
        }
// 버튼이 눌렸는지
//        configuration.isPressed
//
//        // 버튼 자신을 뜻함
//        configuration.self
}


struct MySmallerButtonStyle_Previews: PreviewProvider {
    
    static var previews: some View {
        Button(action: {
            print("button clicked!")
        }, label: {
            /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
        })
        .buttonStyle(MySmallerButtonStyle(color: Color.blue))
    }
}
