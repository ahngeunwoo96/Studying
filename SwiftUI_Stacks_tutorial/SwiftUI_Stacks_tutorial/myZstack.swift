//
//  myZstack.swift
//  SwiftUI_Stacks_tutorial
//
//  Created by Ahngeunwoo on 2020/10/06.
//

import SwiftUI

struct myZstack : View {
    var body: some View {
        
        ZStack {
            Rectangle()
                .frame(width : 50, height: 50)
                .foregroundColor(Color.yellow)
                .zIndex(3)
                .padding(.bottom, 50)
            Rectangle()
                .frame(width : 100, height: 100)
                .foregroundColor(Color.red)
                .zIndex(2)
            Rectangle()
                .frame(width : 150, height: 150)
                .foregroundColor(Color.blue)
                .zIndex(1)
            
        }
        
    }
}


struct myZstack_Previews: PreviewProvider {
    static var previews: some View {
        myZstack()
    }
}
