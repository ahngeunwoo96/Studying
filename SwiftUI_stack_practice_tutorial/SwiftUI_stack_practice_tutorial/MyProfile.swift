//
//  MyProfile.swift
//  SwiftUI_stack_practice_tutorial
//
//  Created by Ahngeunwoo on 2020/10/16.
//

import SwiftUI

struct MyProfile : View {
    
    @Binding var isNavigationBarHidden : Bool
    
    init(isNavigationBarHidden: Binding<Bool> = .constant(false)) {
        _isNavigationBarHidden = isNavigationBarHidden
    }
    
    var body: some View {
        ScrollView {
            VStack {
                Image("mongu")
                    .resizable()
                    .frame(width:200, height:200)
                    .clipShape(Circle())
                    .shadow(color: .gray, radius: 10, x: 0, y: 10)
                    .overlay(
                    Circle()
                        .strokeBorder(lineWidth: 10)
                        .foregroundColor(Color.yellow)
                    )
                    
                Text("몽이")
                    .font(.system(size : 45))
                    .fontWeight(.heavy)
                    .padding()
                
                Text("우리집의 막내")
                    .font(.system(size : 30))
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .padding([.trailing,.leading,.bottom], 10)
                
                HStack {
                    Text("구독하러 가기")
                        .font(.system(size: 20))
                        .padding(20)
                        .foregroundColor(Color.white)
                        .background(Color.red)
                        .cornerRadius(20)

                    
                    Text("오픈깨톡방 가기")
                        .font(.system(size: 20))
                        .padding(20)
                        .foregroundColor(Color.white)
                        .background(Color.orange)
                        .cornerRadius(20)

                }
                .padding()
            }
            .navigationBarTitle("몽이의 프로필", displayMode:.automatic)
            .navigationBarItems(trailing:
                                    NavigationLink(destination:Text("설정화면입니다.")
                                    .font(.largeTitle)
                                    .fontWeight(.black)
            ){
                Image(systemName: "gear")
                    .font(.largeTitle)
                    .foregroundColor(Color.black)
            }
            )
            .onAppear {
                self.isNavigationBarHidden = false
            }
//            .navigationBarItems(trailing:Image(systemName: "apps.iphone")
//                                    .font(.system(size: 30)))

        }// navigationView
    }
}

//
//struct MyProfile_Previews: PreviewProvider {
//    static var previews: some View {
//        MyProfile()
//        
//    }
//}
