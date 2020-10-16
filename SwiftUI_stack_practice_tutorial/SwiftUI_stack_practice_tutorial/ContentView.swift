//
//  ContentView.swift
//  SwiftUI_stack_practice_tutorial
//
//  Created by Ahngeunwoo on 2020/10/07.
//

import SwiftUI

struct ContentView: View {
    
    @State var isNavigationBarHidden : Bool = false
    
    var body: some View {
        
        NavigationView {
            ZStack(alignment : .bottomTrailing) {
                VStack(alignment : .leading, spacing : 0) {
                    
                    HStack {
                        NavigationLink(destination: MyList(isNavigationBarHidden: self.$isNavigationBarHidden)) {
                            Image(systemName: "line.horizontal.3")
                                .font(.largeTitle)
                                .foregroundColor(Color.black)
                        }
                        Spacer()
                        NavigationLink(
                            destination: MyProfile(isNavigationBarHidden: self.$isNavigationBarHidden)
                        ){
                            Image(systemName: "person.crop.circle.fill")
                                .font(.largeTitle)
                                .foregroundColor(Color.black)
                        }
                    
                    }
                    .padding(20)
                    
                    Text("건우의 할 일목록")
                        .font(.system(size: 40))
                        .fontWeight(.black)
                        .padding(.horizontal, 20)
                    
                ScrollView {
                    VStack {
                        MyProjectCard()
                        MyBasicCard()
                        MyCard(icon: "book.fill", title: "책 읽기", start: "1 PM", end: "3 PM", bgColor: Color.green)
                        MyCard(icon: "doc.fill", title: "문서 작업", start: "3 PM", end: "5 PM", bgColor: Color.blue)
                        
                    }
                    .padding()
                }
                }
                    
                
                Circle()
                    .foregroundColor(Color.yellow)
                    .frame(width : 60, height: 60)
                    .overlay(
                        Image(systemName: "plus")
                            .font(.system(size : 30))
                            .foregroundColor(Color.white)
                    )
                    .padding(.trailing, 10)
                    .shadow(radius : 20)
            } // Zstack
            
            .navigationBarTitle("메인")
            .navigationBarHidden(self.isNavigationBarHidden)
            .onAppear{
                self.isNavigationBarHidden = true
            }

        }// NavigationView
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
