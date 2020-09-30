//
//  myWebView.swift
//  SwiftUI_Webview_tutorial
//
//  Created by Ahngeunwoo on 2020/09/30.
//

import SwiftUI
import WebKit

// uikit의 uiview를 사용할 수 있도록 본다.
// UIViewControllerRepresentable

struct myWebView: UIViewRepresentable {
    
    var urlToLoad: String
    // UI view 만들기
    func makeUIView(context: Context) -> WKWebView {
        
        // unrapping
        guard let url = URL(string: self.urlToLoad) else {
            return WKWebView()
        }
        
        // 웹뷰 인스턴스 생성
        let webview = WKWebView()
        
        // 웹뷰를 로드
        webview.load(URLRequest(url: url))
        
        return webview
    }
    
    // 업데이트 ui view
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<myWebView>) {
        
    }
}


struct myWebView_Previews: PreviewProvider {
    static var previews: some View {
        myWebView(urlToLoad: "https://www.naver.com")
    }
}
