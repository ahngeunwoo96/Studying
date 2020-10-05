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
                .frame(width : 100, height: 100)
        }
        
    }
}


struct myZstack_Previews: PreviewProvider {
    static var previews: some View {
        myZstack()
    }
}
