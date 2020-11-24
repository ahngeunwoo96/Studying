//
//  SwiftUI_DeepLink2_tutorialApp.swift
//  SwiftUI_DeepLink2_tutorial
//
//  Created by Ahngeunwoo on 2020/11/04.
//

import SwiftUI

@main
struct SwiftUI_DeepLink2_tutorialApp: App {

    @State var selectedTab = TabIdentifier.todos
    
    var body: some Scene {
        WindowGroup {
            TabView(selection: $selectedTab,
                    content:  {
                        TodoView().tabItem {
                            VStack {
                                Image(systemName: "list.bullet")
                                Text("할일목록")
                            }
                        }.tag(TabIdentifier.todos)
                        ProfileView().tabItem {
                            VStack {
                                Image(systemName: "person.circle.fill")
                                Text("할일목록")
                            }
                        }.tag(TabIdentifier.profile)
                    })
                .onOpenURL(perform: { url in
                    // 열려야 하는 부분 처리
                    guard let tabId = url.tabIdentifier else {
                        return
                    }
                    selectedTab = tabId
                })
        }
    }
}

struct SwiftUI_DeepLink2_tutorialApp_Previews: PreviewProvider {
    static var previews: some View {
        Text("Hello World!")
    }
}

// 어떤 탭이 선택되었는지 여부
enum TabIdentifier : Hashable {
    case todos
    case profile
}

// 어떤 page를 보여줘야 하는지
enum PageIdentifier : Hashable {
    case todoItemO(id : UUID)
}

extension URL {
    // info에서 추가한 딥링크가 들어왔는지 여부
    var isDeeplink : Bool {
        return scheme == "deeplink-swiftui"
    }
    
    // url 들어오는 것으로 어떤 타입의 탭을 보여줘하는지 가져오기
    var tabIdentifier : TabIdentifier? {
        guard isDeeplink else {
            return nil
        }
        switch host {
        case "todos" :
            return .todos
        case "profile":
            return .profile
        default :
            return nil
            
        }
    }
    
    var detailPage : PageIdentifier? {
        
        // deeplink-swiftui://hohoho/great
        
        guard let tabId = tabIdentifier,
              pathComponents.count > 1,
              let uuid = UUID(uuidString: pathComponents[1])
              else { return nil }
        
        switch tabId {
        case .todos :
            return .todoItemO(id: uuid)
        default:
            return nil
        }
        
    }
    
}
