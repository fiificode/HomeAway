//
//  MainTabView.swift
//  HomeAway
//
//  Created by fiififranklin on 28/09/2024.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            ExploreView()
                .tabItem{Label("Explore", systemImage: "magnifyingglass")}
            
            WishListView()
                .tabItem{Label("Wish List", systemImage: "heart")}
            
            ProfileView()
                .tabItem{Label("Profile", systemImage: "person")}
        }
        .toolbarBackground(.red, for: .tabBar)
        .toolbarBackground(.visible, for: .tabBar)
        
    }
}

#Preview {
    MainTabView()
}
