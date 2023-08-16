//
//  TabBar.swift
//  TestApp
//
//  Created by Константин on 15.08.2023.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        
        TabView {
            HomeView()
                .tabItem {
                    Label("Главная", systemImage: "house")
                }
            
            CatalogView()
                .tabItem {
                    Label("Каталог", systemImage: "square.fill.text.grid.1x2")
                }
            
            ShoppingCart()
                .tabItem {
                    Label("Корзина", systemImage: "heart")
                }
            
            ProfileView()
                .tabItem {
                    Label("Профиль", systemImage: "person")
                }
        }
        .accentColor(.green)
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
