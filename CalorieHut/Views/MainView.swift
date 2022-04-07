//
//  MainView.swift
//  CalorieHut
//
//  Created by Youssif Hany on 05/04/2022.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem{
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            Text("Add Meal")
                .tabItem{
                    Image(systemName: "plus")
                    Text("Add")
                }
            Text("Favorite meal")
                .tabItem{
                    Image(systemName: "heart")
                    Text("Favorite")
                }
            Text("Profile")
                .tabItem{
                    Image(systemName: "person.fill")
                    Text("Profile")
                }

        }

    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}