//
//  ContentView.swift
//  SwiftUI_PopupView_tutorial
//
//  Created by Ahngeunwoo on 2020/10/21.
//

import SwiftUI
import ExytePopupView

struct ContentView: View {
    
    @State var shouldShowBottomSolidMessage : Bool = false
    @State var shouldShowBottomToastMessage : Bool = false
    @State var shouldShowTopSolidMessage : Bool = false
    @State var shouldShowTopToastMessage : Bool = false
    @State var shouldShowPopup : Bool = false



    func createBottomSolidMessage() -> some View {
        HStack(alignment : .center, spacing : 10) {
            Image(systemName: "book.fill")
                .font(.system(size : 40))
                .foregroundColor(Color.white)
            
            VStack(alignment: .leading) {
                Text("안내 메시지")
                    .fontWeight(.black)
                    .foregroundColor(Color.white)
                Text("토스트 메세지 입니다!")
                    .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                    .font(.system(size: 14))
                    .foregroundColor(Color.white)
                Divider().opacity(0)

            }
//                    .background(Color.red)
        }
        .padding()
        .frame(width : UIScreen.main.bounds.width)
        .padding(.horizontal, 10)
        .padding(.bottom, UIApplication.shared.windows.first?.safeAreaInsets.bottom == 0 ? 0 : 15)
        .background(Color.purple)
    }
    
    func createBottomToastMessage() -> some View {
        HStack(alignment : .top, spacing : 10) {
            Image("cat")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width : 60, height : 60)
                //위치가 맞지않으면 offset으로 설정
                .foregroundColor(Color.white)
                .cornerRadius(10)
            
            VStack(alignment: .leading) {
                Text("내 고양이 ")
                    .fontWeight(.black)
                    .foregroundColor(Color.white)
                Text("askdnflaknsdlfkanlsdkfnlakndlfknalksdnflkansldknflaknsdlkfnalksdnlfkansldkfnlaksdnlfkasdlfnadknflaknvlzncvlasdvnzlkxcnvlaksdnlvknzlcxkvnlaksdnlvkznxlcvnlfaksnlkvnzlkxcnvlkafnsvfsavasd")
//                    .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                    .font(.system(size: 14))
                    .foregroundColor(Color.white)
                Divider().opacity(0)

            }
//                    .background(Color.red)
        }
        .padding(15)
        .frame(width : 300)
        .background(Color.green)
        .cornerRadius(20)
    }
    
    func createTopSolidMessage() -> some View {
        HStack(alignment : .center, spacing : 10) {
            Image("안건우_증명사진")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width : 60, height : 60)
                .foregroundColor(Color.white)
            
            VStack(alignment: .leading) {
                Text("안건우")
                    .fontWeight(.black)
                    .foregroundColor(Color.white)
                Text("저의 증명사진 입니다!!\n취업을 위해 찍은 증명사진\n#정장#이거누구")
//                    .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                    .font(.system(size: 14))
                    .foregroundColor(Color.white)
                Divider().opacity(0)

            }
//                    .background(Color.red)
        }
        .padding(.vertical, 5)
        .padding(.horizontal, 10)
        .frame(width : UIScreen.main.bounds.width)
        .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.bottom == 0 ? 0 : 35)
        .background(Color.orange)
    }
    
    func createTopToastMessage() -> some View {
        HStack(alignment : .center, spacing : 10) {
            Image(systemName: "paperplane.fill")
                .font(.system(size : 25))
                .foregroundColor(Color.white)
            VStack(alignment: .leading, spacing : 2) {
                Text("안건우님의 메시지")
                    .fontWeight(.black)
                    .foregroundColor(Color.white)
                Text("급한 일입니다!! 연락 주세요")
                    .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                    .font(.system(size: 14))
                    .foregroundColor(Color.white)
            }
            .padding(.trailing, 10)
//                    .background(Color.red)
        }
        .padding(.vertical, 10)
        .padding(.horizontal, 10)
//        .frame(width : UIScreen.main.bounds.width)
        .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.bottom == 0 ? 0 : 35)
        .background(Color.red)
        .cornerRadius(25)
        .padding(20)
    }
    
    func createPopup() -> some View {
        VStack(spacing : 10) {
            Image("안건우_증명사진")
                .resizable()
                .aspectRatio(contentMode: ContentMode.fit)
                .frame(width : 100, height : 100)
            
            Text("ios개발자 안건우")
                .foregroundColor(Color.white)
                .fontWeight(.bold)
            
            Text("한국에서 ios개발자로 살아남기\n취업에 도움되는 개발을 조금씩 해보자\n다음번에는 안드로이드 개발도 공부!!")
                .font(.system(size : 12))
                .foregroundColor(Color(red: 0.9, green: 0.8, blue : 0.9))
                .multilineTextAlignment(.center)
            
            Spacer().frame(height : 10)
            
            Button(action: {
                self.shouldShowPopup = false
            }, label: {
                Text("닫기")
                    .font(.system(size : 14))
                    .foregroundColor(Color.black)
                    .fontWeight(.bold)
            })
            .frame(width : 100, height: 40)
            .background(Color.white)
            .cornerRadius(20.0)
        }
        .padding(.horizontal, 10)
        .frame(width : 200, height: 300)
        .background(Color(hexcode: "8227b0"))
        .cornerRadius(10)
        .shadow(color: Color(.sRGBLinear, white : 0, opacity : 0.13), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
    }

    var body: some View {
        ZStack {
            VStack(spacing : 10) {
                Spacer()
                Button(action: {
                    self.shouldShowBottomSolidMessage = true
                }, label: {
                    Text("바텀 솔리드 메시지")
                        .font(.system(size: 20))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(30)
                })
                Button(action: {
                    self.shouldShowBottomToastMessage = true
                }, label: {
                    Text("바텀 토스트 메시지")
                        .font(.system(size: 20))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color.white)
                        .padding()
                        .background(Color.green)
                        .cornerRadius(30)
                })
                Button(action: {
                    self.shouldShowTopSolidMessage = true
                }, label: {
                    Text("탑 솔리드 메시지")
                        .font(.system(size: 20))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color.white)
                        .padding()
                        .background(Color.orange)
                        .cornerRadius(30)
                })
                Button(action: {
                    self.shouldShowTopToastMessage = true
                }, label: {
                    Text("탑 토스트 메시지")
                        .font(.system(size: 20))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color.white)
                        .padding()
                        .background(Color.red)
                        .cornerRadius(30)
                })
                Button(action: {
                    self.shouldShowPopup = true
                }, label: {
                    Text("팝업")
                        .font(.system(size: 20))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color.white)
                        .padding()
                        .background(Color(hexcode: "8227b0"))
                        .cornerRadius(30)
                })
                Spacer()
                
                
                
                
            } // VStack
       } // ZStack
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        .popup(isPresented : $shouldShowBottomSolidMessage, type : .toast, position : .bottom, animation : .easeInOut, autohideIn : 2, closeOnTap : true, closeOnTapOutside : true, view : {
            //팝업이 되는 뷰
            self.createBottomSolidMessage()
            })
        .popup(isPresented : $shouldShowBottomToastMessage, type : .toast, position : .bottom, animation : .spring(), autohideIn : 2, closeOnTap : true, closeOnTapOutside : true, view : {
            //팝업이 되는 뷰
            self.createBottomToastMessage()
            })
        .popup(isPresented : $shouldShowTopSolidMessage, type : .toast, position : .top, animation : .easeInOut, autohideIn : 2, closeOnTap : true, closeOnTapOutside : true, view : {
            //팝업이 되는 뷰
            self.createTopSolidMessage()
            })
        .popup(isPresented : $shouldShowTopToastMessage, type : .toast, position : .top, animation : .easeInOut, autohideIn : 2, closeOnTap : true, closeOnTapOutside : true, view : {
            //팝업이 되는 뷰
            self.createTopToastMessage()
            })
        .popup(isPresented : $shouldShowPopup, type : .default, position : .top, animation : .easeInOut, autohideIn : 2, closeOnTap : true, closeOnTapOutside : false, view : {
            //팝업이 되는 뷰
            self.createPopup()
            })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
