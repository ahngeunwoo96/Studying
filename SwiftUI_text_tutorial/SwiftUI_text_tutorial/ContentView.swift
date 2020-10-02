//
//  ContentView.swift
//  SwiftUI_text_tutorial
//
//  Created by Ahngeunwoo on 2020/10/01.
//

import SwiftUI

struct ContentView: View {
    
    static var dateFormat: DateFormatter {
        let formatter = DateFormatter()
        //formatter.dateFormat = "YYYY년 M월 d일"
        formatter.dateStyle = .long
        return formatter
    }
    
    var today = Date()
    
    var trueOrFalse : Bool = false
    
    var number = 123
    
    var body: some View {
        VStack {
        Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")
            .tracking(1)
            // 글자와 글자 사이의 가로 간격
            .font(.system(.body, design:.rounded))
            .fontWeight(.medium)
            .multilineTextAlignment(.center)
            .lineLimit(nil)
        // nil : multi line
            .lineSpacing(10)
            // 글자 간의 간격
            .truncationMode(.middle)
            // 생략되는 내용 위치
            .shadow(color:Color.red, radius: 1.5, x: 0, y: 10)
            // 글자의 그림자
            .padding(.all, 20)
            // 간격
            .background(Color.yellow)
            .cornerRadius(10)
            .padding(20)
            .background(Color.orange)
            .cornerRadius(20)
            .padding(20)
            
        // 글자를 출력해보기
        Text("안녕하세요!!")
            .padding(10)
            .background(Color.gray)
            .foregroundColor(Color.white)
            .cornerRadius(20)
            
        // 날짜 출력을 변환하여 출력해보기
        Text("오늘의 날짜입니다 : \(today, formatter: ContentView.dateFormat)")
            .padding(10)
            
        // Bool값을 출력해보기
        Text("참 혹은 거짓 : \(String(trueOrFalse))")
            .padding(10)
            
        // 숫자값을 출력해보기
        Text("숫자입니다 : \(number)")
            .padding(10)
            
            
        }
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
