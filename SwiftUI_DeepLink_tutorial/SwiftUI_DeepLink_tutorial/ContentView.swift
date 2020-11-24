//
//  ContentView.swift
//  SwiftUI_DeepLink_tutorial
//
//  Created by Ahngeunwoo on 2020/10/31.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            NavigationView {
                VStack {
                
                }
            }
            
            TabView(content: {
                HStack {
                    VStack {
                        Image(systemName: "list.dash")
                        
                        Text("할일목록")
                    }
                }
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
