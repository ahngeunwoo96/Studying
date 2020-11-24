//
//  ProfileView.swift
//  SwiftUI_DeepLink2_tutorial
//
//  Created by Ahngeunwoo on 2020/11/04.
//

import Foundation
import SwiftUI

struct ProfileView : View {
    
    var body : some View {
        Rectangle().foregroundColor(Color.init(#colorLiteral(red: 0.3584893346, green: 0.5556272864, blue: 0.393261224, alpha: 1)))
            .frame(width : 100, height : 100)
            .cornerRadius(15)
            .overlay(
                (Text("프로필"))
                    .font(.system(size: 23))
                    .fontWeight(.black)
                    .foregroundColor(.white)
            )
        
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
            ProfileView()
    }
}
