//
//  TabBarItemModel.swift
//  MusicApp
//
//  Created by Sophie Strausberg on 2/23/23.
//

import SwiftUI
//TabItemModel(iconName: "message.fill", title: "Chats", color: Color("BrandLightGreen")), TabItemModel(iconName: "message.fill", title: "Home", color: Color("BrandLightGreen"))
//struct TabItemModel: Hashable {
//    let iconName: String
//    let title: String
//    let color: Color
//}

enum actualTab: Hashable {
    case chats, profile
    
    var iconName: String {
        switch self {
        case .chats: return "message.fill"
        case .profile: return "message.fill"
        }
    }
    
    var title: String {
        switch self {
        case .chats: return "Chats"
        case .profile: return "Profile"
        }
    }
    
    var color: Color {
        switch self {
        case .chats: return Color("BrandLightGreen")
        case .profile: return Color("BrandLightGreen")
        }
    }
}
 
