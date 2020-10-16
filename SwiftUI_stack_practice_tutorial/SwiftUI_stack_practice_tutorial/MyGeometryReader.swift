//
//  MyGeometryReader.swift
//  SwiftUI_stack_practice_tutorial
//
//  Created by Ahngeunwoo on 2020/10/16.
//

import SwiftUI

struct MyGeometryReader : View {
    @State var isBigger : Bool = false
    
    var body: some View {
        GeometryReader { geometryReader in
            HStack(spacing : 0){
                Button(action:
                        { isBigger = true  }) {
                    if(isBigger) {
                        Text("1")
                            .font(.largeTitle)
                            .fontWeight(.black)
                            .frame(width: geometryReader.size.width / 3, height: geometryReader.size.height / 5)
                            .background(Color.red)
                            .foregroundColor(Color.white)
                    }
                    else {
                        Text("1")
                            .font(.largeTitle)
                            .fontWeight(.black)
                            .frame(width: geometryReader.size.width / 3, height: geometryReader.size.height / 10)
                            .background(Color.red)
                            .foregroundColor(Color.white)
                    }
                }
                Button(action:
                        { isBigger = true }) {
                    Text("2")
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .frame(width: geometryReader.size.width / 3)
                        .background(Color.blue)
                        .foregroundColor(Color.white)
                }
                    Text("3")
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .frame(width: geometryReader.size.width / 3)
                        .background(Color.green)
                        .foregroundColor(Color.white)
//                Text("4")
//                    .font(.largeTitle)
//                    .fontWeight(.black)
//                    .frame(width: geometryReader.size.width / 4)
//                    .background(Color.purple)
//                    .foregroundColor(Color.white)
            }
            .background(Color.yellow)
        }
        .background(Color.black)

    }
}


struct MyGeometryReader_Previews: PreviewProvider {
    static var previews: some View {
        MyGeometryReader()
    }
}
