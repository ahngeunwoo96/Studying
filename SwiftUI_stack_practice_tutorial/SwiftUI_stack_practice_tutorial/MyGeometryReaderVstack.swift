//
//  MyGeometryReaderVstack.swift
//  SwiftUI_stack_practice_tutorial
//
//  Created by Ahngeunwoo on 2020/10/16.
//

import SwiftUI

enum Index {
    case one, two, three
}

struct MyGeometryReaderVstack : View {
    
    @State var Index : Index = .one
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Button (action: {
                    // 버튼이 클릭되었을때 로직
                    print("1번이 클릭되었습니다.")
                    withAnimation {
                        self.Index = .one
                    }
                }) { // 버튼의 생김새
                    Text("1")
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .frame(width : 30, height : geometry.size.height / 3)
                        .padding(.horizontal, self.Index == .one ? 50 : 0)
                        .background(Color.red)
                        .foregroundColor(Color.white)
                }
                Button (action: {
                    // 버튼이 클릭되었을때 로직
                    print("2번이 클릭되었습니다.")
                    withAnimation {
                        self.Index = .two
                    }

                }) { // 버튼의 생김새
                    Text("2")
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .frame(width : 30, height : geometry.size.height / 3)
                        .padding(.horizontal, self.Index == .two ? 50 : 0)
                        .background(Color.blue)
                        .foregroundColor(Color.white)
                }
                Button (action: {
                    // 버튼이 클릭되었을때 로직
                    print("3번이 클릭되었습니다.")
                    withAnimation {
                        self.Index = .three
                    }
                }) { // 버튼의 생김새
                    Text("3")
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .frame(width : 30, height : geometry.size.height / 3)
                        .padding(.horizontal, self.Index == .three ? 50 : 0)
                        .background(Color.green)
                        .foregroundColor(Color.white)
                }
            }
        }
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        .background(Color.yellow)
    }
}

struct MyGeometryReaderVstack_Previews: PreviewProvider {
    static var previews: some View {
        MyGeometryReaderVstack()
        
    }
}
