//
//  MainView.swift
//  CalorieHut
//
//  Created by Youssif Hany on 05/04/2022.
//

import SwiftUI

struct MainView: View {
    var body: some View {
            //CustomTabBarView()
            TabView {
                HomeView()
                    .tabItem{
                        Image(systemName: "house.fill")
                        Text("Home")
                    }
                CategoryGridView()
                    .tabItem{
                        Image(systemName: "plus")
                        Text("Add")
                    }
                FavoriteMealView()
                    .tabItem{
                        Image(systemName: "heart")
                        Text("Favorite")
                    }
                CalculatorView()
                    .tabItem{
                        Image(systemName: "person")
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
