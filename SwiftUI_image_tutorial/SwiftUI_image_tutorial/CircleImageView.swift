//
//  CircleimageView.swift
//  SwiftUI_image_tutorial
//
//  Created by Ahngeunwoo on 2020/10/02.
//

import SwiftUI

struct CircleImageView : View {
    var body: some View {
//        Image(systemName: "gamecontroller")
//            .font(.system(size: 200))
//            .foregroundColor(.yellow)
//            .shadow(color: Color.gray, radius:2, x:2, y:10)
        Image("arjan-stalpers-8-sgismcDAQ-unsplash")
            .resizable()
            .scaledToFit()
            //.aspectRatio(contentMode: .fill)
        // 크기를 width 200 Height 100으로 자름
            .frame(width: 200, height: 200)
            .clipShape(Circle())
            .shadow(color: .gray, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x:0, y: 10)
            .overlay(
                Circle()
                    .foregroundColor(.black)
                    .opacity(0.5)
            )
            .overlay(
                Circle().stroke(Color.green, lineWidth: 10)
                    .padding()
            )
            .overlay(
                Circle().stroke(Color.blue, lineWidth: 10)
                    .padding(30)
            )
            .overlay(
                Circle().stroke(Color.yellow, lineWidth: 10)
            )
            .overlay(
                Text("저세상 귀여움")
                    .foregroundColor(Color.white)
                    .font(.system(size: 30))
                    .fontWeight(.light)
            )
            // 사이즈에 맞춰 사진을 자름
            //.clipped()
        
        
    }
}

struct CircleimageView_Previews: PreviewProvider {
    static var previews: some View {
        CircleImageView()
    }
}
