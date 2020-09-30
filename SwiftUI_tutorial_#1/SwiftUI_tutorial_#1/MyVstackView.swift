//
//  MyVstackView.swift
//  SwiftUI_tutorial_#1
//
//  Created by Ahngeunwoo on 2020/09/29.
//

import SwiftUI

struct myVstackView : View {
    
    @Binding
    var isActivated : Bool
    
    // 생성자
    init(isActivated : Binding<Bool> = .constant(false)) {
        _isActivated = isActivated
    }
        
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
        .background(self.isActivated ? Color.green : Color.red)
        .padding(self.isActivated ? 10 : 0)
    }
}

struct myVstackView_Previews: PreviewProvider {
    static var previews: some View {
        myVstackView()
    }
}


