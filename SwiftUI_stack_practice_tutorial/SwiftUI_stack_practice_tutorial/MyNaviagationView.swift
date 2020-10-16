//
//  MyNaviagationView.swift
//  SwiftUI_stack_practice_tutorial
//
//  Created by Ahngeunwoo on 2020/10/15.
//

import SwiftUI

struct MyNavigationView : View {
    
    var body: some View {
        
        NavigationView {
            Text("MyNavigationView")
            //MyList()
            .navigationBarTitle("안녕하세요!", displayMode:.large)
                .navigationBarItems(leading: Button(action: {
                    print("호호")
                }){
                    Text("호호")
                        .foregroundColor(Color.black)
                }
                ,trailing: NavigationLink(
                    destination: Text("넘어온 화면입니다.")
                    ){
                        Image(systemName: "bookmark.fill")
                            .font(.system(size: 30))
                            .foregroundColor(Color.black)
                    }
                )
            
        }
    }
}

struct MyNaviagationView_Previews: PreviewProvider {
    static var previews: some View {
        MyNavigationView()
    }
}
