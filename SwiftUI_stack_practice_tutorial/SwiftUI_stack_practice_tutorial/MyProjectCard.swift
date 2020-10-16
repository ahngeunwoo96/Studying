//
//  MyProjectCard.swift
//  SwiftUI_stack_practice_tutorial
//
//  Created by Ahngeunwoo on 2020/10/07.
//

import SwiftUI

struct MyProjectCard : View {
    
    @State var shouldShowAlert : Bool = false
    
    var body: some View {
        
        VStack(alignment: .leading, spacing : 0){
            Rectangle().frame(height: 0)
            Text("건우의 IOS 프로젝트")
                .font(.system(size: 25))
                .fontWeight(.black)
                .padding(.bottom, 5)
            Text("10 AM ~ 11 AM")
                .padding(.bottom, 10)
                .foregroundColor(.secondary)
            HStack {
                Image("1")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(
                        Circle()
                            .stroke(lineWidth: 5)
                            .foregroundColor(Color.orange)
                        
                    )
                Image("2")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                Image("3")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                Spacer()
                
                Button(action: {
                    print("확인 버튼이 클릭되었습니다.")
                    self.shouldShowAlert = true
                }){
                Text("확인")
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .padding()
                    .frame(width: 80)
                    .background(Color.blue)
                    .cornerRadius(20)
                }.alert(isPresented: $shouldShowAlert){
                    Alert(title: Text("알림창입니다!"))
                }
            }
        }
        .padding(20)
        .background(Color.yellow)
        .cornerRadius(20)
        
    }
}
//
//struct MyProjectCard_Previews: PreviewProvider {
//    static var previews: some View {
//        MyProjectCard()
//    }
//}
