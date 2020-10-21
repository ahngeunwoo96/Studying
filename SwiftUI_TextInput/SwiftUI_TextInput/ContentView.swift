//
//  ContentView.swift
//  SwiftUI_TextInput
//
//  Created by Ahngeunwoo on 2020/10/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var inputValue : String = ""
    @State private var PasswordInputValue : String = ""
        
    var body: some View {
        // Binding은 $ 필요
        VStack(spacing : 0) {
//            Image("마들렌")
//                .resizable()ß
//                .frame(width : 200, height : 200)
//                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
//
//            Text("맛있다!~~")
//                .font(.system(size : 40))
//                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
//                .foregroundColor(Color.red)
            
            HStack {
                TextField("사용자 이름", text : $inputValue)
                    .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                    .disableAutocorrection(true)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width : 250, height : 50)
                    .padding([.leading, .trailing], 10 )
                
                if(inputValue != "") {
                    Button(action: {
                        inputValue = ""
                    }, label: {
                        Image(systemName : "multiply.circle.fill")
                            .font(.system(size: 25))
                            .foregroundColor(Color.gray)
                    })
                }
            }
            
//                .disableAutocorrection(/*@START_MENU_TOKEN@*/false/*@END_MENU_TOKEN@*/)
            HStack {
                SecureField("비밀번호",text : $PasswordInputValue)
                    .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                    .disableAutocorrection(true)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width : 250, height : 50)
                    .padding([.leading, .trailing], 10)
                
                if(PasswordInputValue != "") {
                    Button(action: {
                        PasswordInputValue = ""
                    }, label: {
                        Image(systemName: "multifly.circle.fill")
                            .font(.system(size : 20))
                            .foregroundColor(Color.gray)
                    })
                }
            }
            
            Text("비밀번호 : \(PasswordInputValue)")
        }
        
        
        // 대문자로 시작 안하게
        // text를 입력하면 x표시가 뜨고 x표시를 클릭하면 text가 사라지도록
        // autocomplite 기능 해제
        
        // 입력한 비밀번호가 밑에 뜨게
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
