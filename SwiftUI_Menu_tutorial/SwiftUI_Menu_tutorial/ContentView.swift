//
//  ContentView.swift
//  SwiftUI_Menu_tutorial
//
//  Created by Ahngeunwoo on 2020/11/24.
//

import SwiftUI

let myPets = ["멍멍이", "야옹이", "찍찍이"]

struct ContentView: View {
    
    @State private var shouldShowAlert : Bool = false
    @State private var myText : String = ""
    @State private var selected : Int = 0
    
    var body: some View {
        NavigationView (content: {
            VStack(spacing: 20) {
                Spacer()
                Text("\(myPets[selected])")
                    .font(.system(size : 60))
                    .bold()
                
                Text("메뉴는 상단 오른쪽을 클릭하세요")
                    .font(.system(size : 15))
                    .fontWeight(.black)
                Spacer()
                Spacer()
                    
            }
                .padding()
                .navigationTitle("Navigation Name")
                .toolbar(content: {
                    ToolbarItem(placement: .primaryAction, content: {
                        Menu(content: {
                            Button(action: {
                                print("메뉴0 클릭!")
                                shouldShowAlert = true
                                myText = "오늘도 빡코딩입니다!!"
                            }, label: {
                                Label("오늘도 빡코딩!!", systemImage: "flame.fill")
                            })
                            
                            // 멀티 트레일링 클로저
                            Button {
                                print("버튼클릭!")
                                shouldShowAlert = true
                                myText = "오늘은 쉬는 날!"
                            } label : {
                                Label("집에서 쉬는 날!", systemImage: "house.fill")
                            }
                            
                            Section {
                                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                    Text("Section으로 나눈 버튼!")
                                })
                                
                                Button(action: {}, label: {
                                    Label("Section으로 나눈 버튼2", systemImage: "doc")
                                })
                            }
                            
                            Picker(selection : $selected, label :
                                   Text("애완동물 선택")) {
                                ForEach(myPets.indices, id: \.self, content: { index in
                                    Text("\(myPets[index])").tag(index)
                                })
                            }
                        }, label: {
                            Circle()
                                .foregroundColor(Color.init(#colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)))
                                .frame(width: 50, height: 50)
                                .overlay(
                                    Label("더 보기", systemImage: "ellipsis")
                                        .font(.system(size : 30))
                                        .foregroundColor(Color.white)
)
                        }) // 메뉴
                    })
                })
                .alert(isPresented: $shouldShowAlert, content: {
                    Alert(title: Text("클릭"), message: Text("\(myText)"), dismissButton: .default(Text("뒤로 가기")))
                })
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
