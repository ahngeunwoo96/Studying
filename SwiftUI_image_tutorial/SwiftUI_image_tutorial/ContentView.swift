//
//  ContentView.swift
//  SwiftUI_image_tutorial
//
//  Created by Ahngeunwoo on 2020/10/02.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Image("arjan-stalpers-8-sgismcDAQ-unsplash")
                    .frame(height: 10)
                    .offset(y:-80)
                
                CircleImageView()
                
                HStack {
                    NavigationLink(destination: myWebView(urlToLoad:"https://www.naver.com")
                                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)

                ){
                    Text("네이버 홈페이지로 가기")
                        .font(.system(size: 15))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.yellow)
                        .cornerRadius(20)
                    }
                    NavigationLink(destination: myWebView(urlToLoad:"https://www.youtube.com")
                                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                ){
                    Text("유튜브로 가기")
                        .font(.system(size: 15))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.orange)
                        .cornerRadius(20)
                    }
                } // Hstack
                .padding(40)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
