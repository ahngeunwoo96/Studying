//
//  MyButtonStyle.swift
//  SwfitUI_ButtonStyle
//
//  Created by Ahngeunwoo on 2020/10/20.
//

import SwiftUI

enum ButtonType {
    case tab, long
}

struct MyButtonStyle : ButtonStyle {
    
    var color : Color
    var type : ButtonType
    
    func makeBody(configuration: Configuration) -> some View {
        
        configuration
            .label
            .font(.system(size: 20))
            .foregroundColor(Color.white)
            .padding()
            .background(self.color)
            .cornerRadius(20)
            .scaleEffect(configuration.isPressed ? 1.3 : 1)
            .onTapGesture {
                if(self.type == .tab) {
                    let haptic = UIImpactFeedbackGenerator(style: .light)
                    haptic.impactOccurred()
                }
            }
            .onLongPressGesture {
                if(self.type == .long) {
                    let haptic = UIImpactFeedbackGenerator(style: .heavy)
                    haptic.impactOccurred()
                }
            }
                
        }
// 버튼이 눌렸는지
//        configuration.isPressed
//
//        // 버튼 자신을 뜻함
//        configuration.self
}


struct MyButtonStyle_Previews: PreviewProvider {
    
    static var previews: some View {
        Button(action: {
            print("button clicked!")
        }, label: {
            /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
        })
        .buttonStyle(MyButtonStyle(color: Color.blue, type: .tab ))
    }
}
