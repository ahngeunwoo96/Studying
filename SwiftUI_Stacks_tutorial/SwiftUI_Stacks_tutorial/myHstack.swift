//
//  myHorizontalStack.swift
//  SwiftUI_Stacks_tutorial
//
//  Created by Ahngeunwoo on 2020/10/05.
//

import SwiftUI

struct MyHstack : View {
    var body: some View {
        
        HStack(alignment: .center  ) {
            
//            Divider()
//            Rectangle()
//                .frame(width: 100)
//                .foregroundColor(Color.white)
//            Rectangle()
//                .frame(width: 100, height: 100)
//                .foregroundColor(Color.red)
            
            Image(systemName: "flame.fill")
                .foregroundColor(Color.white)
                .font(.system(size: 70))
            
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(Color.yellow)
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(Color.blue)
                
        }
        .padding()
        .background(Color.green)
    }
}

struct myHorizontalStack_Previews: PreviewProvider {
    static var previews: some View {
        MyHstack()
    }
}
