//
//  MyVstackView.swift
//  SwiftUI_tutorial_#1
//
//  Created by Ahngeunwoo on 2020/09/29.
//

import SwiftUI

struct myVstackView : View {
    var body : some View {
        HStack {
            Text("1!")
                .fontWeight(.bold)
                .font(.system(size:60))
            Text("2!")
                .fontWeight(.bold)
                .font(.system(size:60))
            Text("3!")
                .fontWeight(.bold)
                .font(.system(size:60))
        }
        .background(Color.red)
    }
}

struct myVstackView_Previews: PreviewProvider {
    static var previews: some View {
        MyVstackView()
    }
}

