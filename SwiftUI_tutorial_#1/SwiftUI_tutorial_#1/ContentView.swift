//
//  ContentView.swift
//  SwiftUI_tutorial_#1
//
//  Created by Ahngeunwoo on 2020/09/29.
//

import SwiftUI

struct ContentView: View {
    
    //@State : 값의 변화를 감지 -> view에 적용
    @State
    private var isActivated: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    MyVstackView()
                    MyVstackView()
                    MyVstackView()
                }
                .padding(isActivated ? 10.0 : 50.0)
                .background(isActivated ? Color.yellow : Color.black)
                
                
                .onTapGesture {
                    print("Vstack이 클릭되었다.")
                    
                    // 애니메이션과 함께
                    withAnimation {
                    // toggle() true 이면 flase로 false이면 true
                    self.isActivated.toggle()
                    }
                }
                
                NavigationLink(destination: MyTextView()) {
                    Text("내비게이션")
                        .fontWeight(.heavy)
                        .font(.system(size:60))
                        .background(Color.orange)
                        .foregroundColor(Color.white)
                        .cornerRadius(30)
                }
                .padding(.top, 50)
            }
            
        } // Navigation view
        
    }
    
}

struct MyVstackView : View {
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
        
        // 탭 제스처 추가
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
