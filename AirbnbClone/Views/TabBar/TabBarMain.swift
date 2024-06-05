//
//  TabBarMain.swift
//  AirbnbClone
//
//  Created by Luciano Nicolini on 26/10/2023.
//

import SwiftUI

struct TabBarMain: View {
    var body: some View {
        TabView {
            ExploreView()
                .tabItem { Label("Explore", systemImage: "magnifyingglass") }
            WhishListsView()
                .tabItem { Label("Wishlists", systemImage: "heart") }
            ProfileView()
                .tabItem { Label("Profile", systemImage: "person") }
        }
    }
}

#Preview {
    TabBarMain()
}
