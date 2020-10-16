//
//  MyList.swift
//  SwiftUI_stack_practice_tutorial
//
//  Created by Ahngeunwoo on 2020/10/09.
//

import SwiftUI

struct MyList : View {
    
    @Binding var isNavigationBarHidden : Bool
    
    init(isNavigationBarHidden: Binding<Bool> = .constant(false)) {
        
        if #available(iOS 14.0, *){
            
        }else {
            UITableView.appearance().tableFooterView = UIView()
        }
        
        UITableView.appearance().separatorStyle = .none
        
        _isNavigationBarHidden = isNavigationBarHidden
        
    }

    var body: some View {
        //방법 1
//        List{
//            Text("My List")
//            Text("My List")
//            Text("My List")
//            Text("My List")
//            Text("My List")
//        }
        //방법 2
//        List {
//            ForEach(1...10, id: \.self) {
//                Text("My List\($0)")
//            }
//        }
        List {
            
            Section(header: Text("오늘의 첫번째 할 일.")
                        .font(.headline)
                        .foregroundColor(Color.black)
                    ,footer: Text("footer")
            
            ) {
                ForEach(1...3, id: \.self) { itemIndex in
                    //Text("My List\(itemIndex)")
                    MyCard(icon: "book.fill", title: "책 읽기\(itemIndex)", start: "1 PM", end: "3 PM", bgColor: Color.green)
                }
            }
            .listRowInsets(EdgeInsets.init(.init(top: 10, leading: 10, bottom: 10, trailing: 10)))
            
            Section(header: Text("오늘의 두번째 할 일.")
                        .font(.headline)
                        .foregroundColor(Color.black)) {
                ForEach(1...3, id: \.self) { itemIndex in
                    //Text("My List\(itemIndex)")
                    MyCard(icon: "gamecontroller.fill", title: "롤 한판하기\(itemIndex)", start: "3 PM", end: "4 PM", bgColor: Color.orange)
                }
            }
            .listRowInsets(EdgeInsets.init(.init(top: 10, leading: 10, bottom: 10, trailing: 10)))
            .listRowBackground(Color.yellow)
        }
        .listStyle(GroupedListStyle())
        //.listStyle(PlainListStyle()) // list의 기본 스타일
        .navigationBarTitle("내 목록")
        //.navigationBarHidden(self.isNavigationBarHidden)
        .onAppear{
            self.isNavigationBarHidden = false
        }

        
    }
}
//
//struct MyList_Previews: PreviewProvider {
//    static var previews: some View {
//        MyList()
//    }
//}
