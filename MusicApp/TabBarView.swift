//
//  TabBarView.swift
//  MusicApp
//
//  Created by Sophie Strausberg on 2/23/23.
//

import SwiftUI

struct TabBarView: View {
    @State private var selection = "chats"
    @State private var tabSelction: actualTab = .chats
    @State private var work = false

    var body: some View {
        TabBarContainer(selection: $tabSelction) {
            ContactList()
                .tabBarItem(tab: .chats, selection: $tabSelction)
                

            ProfileView()
                .tabBarItem(tab: .profile, selection: $tabSelction)
        }.zIndex(1.0)
//        .onPreferenceChange(TabBarHidden.self) { value in
//            work.toggle()
//        }
    }
}

struct FirstView: View {
    @State private var selection = false
    
    var body: some View {
        NavigationView {
            VStack {
                Text("First View")
                    .font(.headline)
//                    .preference(key: TabBarHidden.self, value: false)
//                Login()
            }
//            .tabBarHidden(isHidden: $selection)
//            .navigationTitle("First title")
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
            .background(Color.yellow)
        }
    }
}

struct SecondView: View {
    var body: some View {
        NavigationView {
            VStack {
    //            MessageMenu()
                
                NavigationLink(destination: FirstView()) {
                    Text("Second View, tap to navigate")
                        .font(.headline)
                }
            }
    //        .navigationTitle("Second title")
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
    //        .background(Color.orange)
        }
       
    }
}

struct ThirdView: View {
    var body: some View {
        VStack {
            Text("Third View with tabBar hidden")
                .font(.headline)
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(Color.red.edgesIgnoringSafeArea(.bottom))
    }
}

//struct TabBarView: View {
//    enum Tab: Int {
//        case first, second
//    }
//
//    @State private var selectedTab = Tab.first
//
//    var body: some View {
//        VStack(spacing: 0) {
//            ZStack {
//                if selectedTab == .first {
//                    FirstView()
//                }
//                else if selectedTab == .second {
//                    NavigationView {
//                        VStack(spacing: 0) {
//                            SecondView()
//                            tabBarView
//                        }
//                    }
//                }
//            }
//            .animation(nil)
//
//            if selectedTab != .second {
//                tabBarView
//            }
//        }
//    }
    /*
    var tabBarView: some View {
        VStack(spacing: 0) {
            Divider()
            
            HStack(spacing: 20) {
                tabBarItem(.first, title: "First", icon: "hare", selectedIcon: "hare.fill")
                tabBarItem(.second, title: "Second", icon: "tortoise", selectedIcon: "tortoise.fill")
            }
            .padding(.top, 8)
        }
        .frame(height: 50)
        .background(Color.white.edgesIgnoringSafeArea(.all))
    }
    
    func tabBarItem(_ tab: Tab, title: String, icon: String, selectedIcon: String) -> some View {
        ZStack(alignment: .topTrailing) {
            VStack(spacing: 3) {
                VStack {
                    Image(systemName: (selectedTab == tab ? selectedIcon : icon))
                        .font(.system(size: 24))
                        .foregroundColor(selectedTab == tab ? .primary : .black)
                }
                .frame(width: 55, height: 28)
                
                Text(title)
                    .font(.system(size: 11))
                    .foregroundColor(selectedTab == tab ? .primary : .black)
            }
        }
        .frame(width: 65, height: 42)
        .onTapGesture {
            selectedTab = tab
        }
    }
}
     */

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
