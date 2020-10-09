//
//  MyBasicCard.swift
//  SwiftUI_stack_practice_tutorial
//
//  Created by Ahngeunwoo on 2020/10/09.
//

import SwiftUI

struct MyCard : View {
    
    var icon : String
    var title : String
    var start : String
    var end : String
    var bgColor : Color
    
    var body : some View {
        
        HStack {
            
            Image(systemName: icon)
                .font(.system(size: 40))
                .foregroundColor(Color.white)
            
            Spacer().frame(width : 10)
                
            VStack(alignment : .leading, spacing : 0) {
                Rectangle().frame(height : 0)
                
                Text(title)
                    .font(.system(size : 23))
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .padding(.bottom, 10)
                Text("\(start) - \(end)")
                    .font(.system(size : 15))
                    .foregroundColor(Color.white)
            }
            
            
        }
        .padding()
        .background(bgColor)
        .cornerRadius(20)
        
    }
}

struct MyCard_Previews: PreviewProvider {
    static var previews: some View {
        MyCard(icon: "book.fill", title: "책 읽기", start: "1 PM", end: "3 PM", bgColor: Color.green)
    }
}
