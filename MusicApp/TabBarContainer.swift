//
//  TabBarContainer.swift
//  MusicApp
//
//  Created by Sophie Strausberg on 2/23/23.
//

import SwiftUI

struct TabBar : View {
    
    let tabs: [actualTab]
    @Binding var selection: actualTab
    
    var body : some View {
        VStack {
            Spacer()
//            Divider()
            HStack(alignment: .bottom) {
                    ForEach(tabs, id: \.self) { tab in
                        newTabItem(tab: tab).onTapGesture {
                            switchToTab(tab: tab)
                        }
                      
                    }
            }.padding(.vertical, 5)
            .background(Color.green)
            .cornerRadius(50)
        }
            
//            .padding(.horizontal, 10)
            .edgesIgnoringSafeArea(.bottom)
   
    }
}

//ForEach(0..<5, id: \.self) { num in
//    HStack {
//        Button(action: {
//            self.selectedTabIndex = num
//        }, label: {
//            Spacer()
//            if num == 2 {
//                Image(systemName: tabBarImageNames[num])
//                    .foregroundColor(Color.red)
//                    .font(.system(size: 44, weight: .semibold))
//            } else {
//                Image(systemName: tabBarImageNames[num])
//                    .foregroundColor(selectedTabIndex == num ? .black : .init(white: 0.7))
//            }
//
//            Spacer()
//        })
//    }.font(.system(size: 24, weight: .semibold))
//}
//}
//.padding(.top, 12)
//.padding(.bottom, 12)

extension TabBar {
    private func newTabItem(tab: actualTab) -> some View {
        VStack {
            Image(systemName: tab.iconName)
                .font(.system(size: 24, weight: .semibold))
//            Text(tab.title).font(.system(size: 20, weight: .semibold, design: .rounded))
        }
        .padding(.vertical, 15)
        .frame(maxWidth: .infinity)
//        .foregroundColor(selection == tab ? .black : .gray.opacity(0.2))
        .foregroundColor(selection == tab ? .black : .init(white: 0.7))
//        .background(selection == tab ? .black : .clear)
        .cornerRadius(50)
    }
    
    private func switchToTab(tab: actualTab) {
        withAnimation(.easeInOut.speed(2)) {
            selection = tab
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static let tabs: [actualTab] = [.chats, .profile]
    
    static var previews: some View {
        VStack {
            Spacer()
            TabBar(tabs: tabs, selection: .constant(tabs.first!))
        }
    }
}
