//
//  MainTabView.swift
//  AirBnBApp
//
//  Created by Marco Alonso Rodriguez on 03/12/23.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            ExploreView()
                .tabItem { Label("Explore", systemImage: "magnifyingglass") }
            
            WhishlistView()
                .tabItem { Label("Whislist", systemImage: "heart") }
            
            ProfileView()
                .tabItem { Label("Profile", systemImage: "person") }
        }
    }
}

#Preview {
    MainTabView()
}
