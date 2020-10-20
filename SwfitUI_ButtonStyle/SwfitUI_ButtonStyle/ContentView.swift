//
//  ContentView.swift
//  SwfitUI_ButtonStyle
//
//  Created by Ahngeunwoo on 2020/10/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing : 10) {
            Button(action : {
                print("탭 버튼 클릭")
            }, label : {
                Text("탭")
                    .fontWeight(.bold)
            })
            .buttonStyle(MyButtonStyle(color : Color.yellow, type: .tab))
            
            Button(action: {
                print("롱 버튼 클릭")
            }, label: {
                Text("롱 클릭")
                    .fontWeight(.bold)
            })
            .buttonStyle(MyButtonStyle(color : Color.orange, type: .long))
            
            Button(action: {
                print("회전 버튼 클릭")
            }, label: {
                Text("회전 버튼")
                    .fontWeight(.bold)
            })
            .buttonStyle(MyRotateButtonStyle(color : Color.blue))
            
            Button(action: {
                print("블러 버튼 클릭")
            }, label: {
                Text("축소 버튼")
                    .fontWeight(.bold)
            })
            .buttonStyle(MySmallerButtonStyle(color : Color.green))
            
            Button(action: {
                print("축소 버튼 클릭")
            }, label: {
                Text("블러 버튼")
                    .fontWeight(.bold)
            })
            .buttonStyle(MyBlurButtonStyle(color : Color.red))
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
