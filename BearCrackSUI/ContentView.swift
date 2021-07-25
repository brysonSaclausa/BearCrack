//
//  ContentView.swift
//  BearCrack
//
//  Created by BrysonSaclausa on 7/17/21.
//

import SwiftUI

struct ContentView: View {
    
    init() {
        
        UITabBar.appearance().isTranslucent = true
        UITabBar.appearance().unselectedItemTintColor = UIColor(.white)
        UITabBar.appearance().barTintColor = UIColor(.orange)

        UINavigationBar.appearance().backgroundColor = UIColor(.orange)
     }

    var body: some View {
        NavigationView {
            TabView {
                MenuView()
                    .tag(1)
                    .tabItem { Image(systemName: "book.fill") }
                
                Text("Create")
                    .tag(2)
                    .tabItem { Image(systemName: "lightbulb.fill") }
                    
                Text("favorites")
                    .tag(4)
                    .tabItem { Image(systemName: "star.fill") }
                    .navigationBarTitle("Favorites")
                
                Text("account")
                    .tag(4)
                    .tabItem { Image(systemName: "person.fill") }
                
                
                
            }.accentColor(.yellow)
            .navigationTitle("Bear Crack 808")
            .navigationBarItems(trailing: Image(systemName: "cart"))
        }
            
        
     }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
