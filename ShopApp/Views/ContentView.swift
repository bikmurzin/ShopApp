//
//  ContentView.swift
//  ShopApp
//
//  Created by Robert Bikmurzin on 14.08.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Tab = .main
    
    enum Tab {
        case main
        case catalog
        case basket
        case profile
    }
    
    var body: some View {
        
        TabView(selection: $selection) {
            MainScreen()
                .tabItem{
                    Label("Главная", systemImage: "house.circle")
                }
                .tag(Tab.main)
            
            MainScreen()
                .tabItem{
                    Label("Каталог", systemImage: "square.grid.2x2")
                }
                .tag(Tab.catalog)
            
            MainScreen()
                .tabItem{
                    Label("Корзина", systemImage: "basket")
                }
                .tag(Tab.basket)
            
            MainScreen()
                .tabItem{
                    Label("Профиль", systemImage: "person.crop.circle")
                }
                .tag(Tab.profile)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
