//
//  TodoView.swift
//  SwiftUI_DeepLink_tutorial
//
//  Created by Ahngeunwoo on 2020/11/01.
//

import Foundation
import SwiftUI

struct TodoItem : Identifiable, Hashable {
    var id: UUID
    var title : String
}

func prepareData() -> [TodoItem] {
    print("prepareData() called")
    
    var newList = [TodoItem]()
    
    for i in 0...20 {
        let newTodo = TodoItem(id: UUID(), title: "내 할일 \(i)")
        print("newTodo.id : \(newTodo.id) / title: \(newTodo.title)")
        // 빈 배열 newList에 newTodo를 붙여줌
        newList.append(newTodo)
    }
    return newList
}

struct TodoView : View {
    
    @State var todoItems = [TodoItem]()
    
    init() {
        _todoItems = State(initialValue: prepareData())
    }
    
    var body: some View {
        NavigationView {
            List(todoItems) { todoItem in
                NavigationLink(
                    destination: Text("\(todoItem.title)"),
                    label: {
                        Text("\(todoItem.title)")
                    })
                    .navigationTitle(Text("할 일 목록"))
            }
        }
    }
}

struct TodoView_Previews: PreviewProvider {
    static var previews: some View {
        TodoView()
    }
}
