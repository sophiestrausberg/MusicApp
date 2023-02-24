//
//  TabBarItemsPreferenceKey.swift
//  MusicApp
//
//  Created by Sophie Strausberg on 2/23/23.
//

import Foundation
import SwiftUI

struct TabBarItemsPreferenceKey: PreferenceKey {
    static var defaultValue = [actualTab]()
    
    static func reduce(value: inout [actualTab], nextValue: () -> [actualTab]) {
        value += nextValue()
    }
}

struct TabBarItemViewModifier: ViewModifier {
    let tab: actualTab
    @Binding var selection: actualTab
    
    func body(content: Content) -> some View {
        content
            .opacity(selection == tab ? 1 : 0 )
            .preference(key: TabBarItemsPreferenceKey.self, value: [tab])
    }
}

extension View {
    func tabBarItem(tab: actualTab, selection: Binding<actualTab>) -> some View {
        modifier(TabBarItemViewModifier(tab: tab, selection: selection))
    }
}


struct TabBarHidden: PreferenceKey {
    static var defaultValue: Bool = false
    
    static func reduce(value: inout Bool, nextValue: () -> Bool) {
//        print("-----")
        value = nextValue()
    }
}


struct TabBarHiddenViewModifier: ViewModifier {
    @Binding var isHidden: Bool

    func body(content: Content) -> some View {
        content
            .opacity(isHidden == true ? 1 : 0 )
            .preference(key: TabBarHidden.self, value: isHidden)
    }
}

extension View {
    func tabBarHidden(isHidden: Binding<Bool>) -> some View {
        modifier(TabBarHiddenViewModifier(isHidden: isHidden))
    }
}
