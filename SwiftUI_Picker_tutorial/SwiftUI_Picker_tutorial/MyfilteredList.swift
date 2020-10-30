//
//  MyfilteredView.swift
//  SwiftUI_Picker_tutorial
//
//  Created by Ahngeunwoo on 2020/10/28.
//

import SwiftUI
enum School : String, CaseIterable {
    case elementary = "초등학교"
    case middle = "중학교"
    case high = "고등학교"
}

struct MyFriend : Identifiable, Hashable {
    var id = UUID()
    var name : String
    var school : School
}

func prepareData() -> [MyFriend] {
    var newList = [MyFriend]()
    
    for i in 0...20 {
        let newFriend = MyFriend(name: "내 친구 \(i)", school: School.allCases.randomElement()!)
        newList.append(newFriend)
    }
    
    return newList
}

struct MyFilteredList : View {
    
    @State private var filteredValue = School.elementary
    
    @State private var myFriendsList = [MyFriend]()
    
    init() {
        _myFriendsList = State(initialValue : prepareData())
    }
        
    var body: some View {
        VStack {
            Text("선택된 필터 : \(filteredValue.rawValue)")
            Picker(selection: $filteredValue, label: Text(""), content: /*@START_MENU_TOKEN@*/{
                Text("초등학교").tag(School.elementary)
                Text("중학교").tag(School.middle)
                Text("고등학교").tag(School.high)
            }/*@END_MENU_TOKEN@*/)
            .pickerStyle(SegmentedPickerStyle())
            
            List {
                ForEach(myFriendsList.filter{ filterTerm in
//                    $0.school == filteredValue
                    filterTerm.school == filteredValue
                }) { frienditem in
                    GeometryReader { geometryProxy in
                        HStack {
                            Text("name: \(frienditem.name)")
                                .frame(width: geometryProxy.size.width / 2)
                        
                            Divider()
                            Text("school: \(frienditem.school.rawValue)")
                                .frame(width : geometryProxy.size.width / 2)
                        
                        }
                    }
                }
            }
            
//            List {
//                ForEach(myFriendsList, id: \.self){ frienditem in
//
//                    GeometryReader {    geometryProxy in
//                        HStack {
//                            Text("name: \(frienditem.name)")
//                                .frame(width: geometryProxy.size.width / 3)
//
//                            Divider()
//                            Text("school: \(frienditem.school.rawValue)")
//                                .frame(width : geometryProxy.size.width / 2)
//
//                        }
//                    }
//
//                }
//            }
        }
    }
}

struct MyfilteredList_Previews: PreviewProvider {
    static var previews: some View {
        MyFilteredList()
    }
}
