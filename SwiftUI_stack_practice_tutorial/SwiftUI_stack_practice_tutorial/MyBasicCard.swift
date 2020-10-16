//
//  MyBasicCard.swift
//  SwiftUI_stack_practice_tutorial
//
//  Created by Ahngeunwoo on 2020/10/09.
//

import SwiftUI

struct MyBasicCard : View {
    var body : some View {
        
        HStack {
            
            Image(systemName: "flame")
                .font(.system(size: 40))
                .foregroundColor(Color.white)
            
            Spacer().frame(width : 10)
                
            VStack(alignment : .leading, spacing : 0) {
                Rectangle().frame(height : 0)
                
                Text("유툽 라이브 버닝")
                    .font(.system(size : 23))
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .padding(.bottom, 10)
                Text("8 PM - 10 PM")
                    .font(.system(size : 15))
                    .foregroundColor(Color.white)
            }
            
            
        }
        .padding()
        .background(Color.purple)
        .cornerRadius(20)
        
    }
}
//
//struct MyBasicCard_Previews: PreviewProvider {
//    static var previews: some View {
//        MyBasicCard()
//    }
//}
