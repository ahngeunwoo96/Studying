//
//  ContentView.swift
//  SwiftUI_stack_practice_tutorial
//
//  Created by Ahngeunwoo on 2020/10/07.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack(alignment : .bottomTrailing) {
            VStack(alignment : .leading, spacing : 0) {
                
                HStack {
                    Image(systemName: "line.horizontal.3")
                        .font(.largeTitle)
                    Spacer()
                    Image(systemName: "person.crop.circle.fill")
                        .font(.largeTitle)
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
                    MyBasicCard()
                    MyBasicCard()
                    MyBasicCard()
                    MyBasicCard()
                    MyBasicCard()
                    MyBasicCard()
                    MyBasicCard()
                    
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
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
