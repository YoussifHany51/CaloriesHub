//
//  CustomTabBarView.swift
//  CaloriesHub
//
//  Created by Youssif Hany on 06/05/2022.
//

import SwiftUI

struct TabBarView: View {
    @StateObject var tabData = TabBarViewModel()
    
    init(){
        UITabBar.appearance().isHidden = true
    }
    
    @Namespace var animation
    
    var body: some View {
        TabView(selection: $tabData.cuurentTab){
            HomeView()
                .tag("Home")
            
            CategoryGridView()
                .tag("Add")
            
            FavoriteMealView()
                .tag("Favorite")
            
            CalculatorView()
                .tag("Calculator")
        }
        .overlay(
            HStack{
                TabBarButton(title: "Home", image: "house.fill", animation: animation)
                TabBarButton(title: "Add", image: "plus.circle.fill", animation: animation)
                TabBarButton(title: "Favorite", image: "heart.fill", animation: animation)
                TabBarButton(title: "Calculator", image: "barometer", animation: animation)
            }
                .environmentObject(tabData)
                .padding(.vertical,10)
//                .padding()
                .background(.thinMaterial,in: Capsule())
                .padding(.horizontal,20)
                .padding(.bottom,8)
                .shadow(color: .white.opacity(0.09), radius: 5,
                        x: 5, y: 5)
                .shadow(color: .white.opacity(0.09), radius: 5,
                        x: -15, y: 0)
            ,alignment: .bottom
        )
    }
}

struct CustomTabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
            
    }
}

struct TabBarButton: View{
    
    var title:String
    var image:String
    var animation:Namespace.ID
    
    @EnvironmentObject var tabData: TabBarViewModel
    
    var body: some View{
        Button{
            withAnimation{
                tabData.cuurentTab = title
            }
        }label: {
            VStack{
                Image(systemName: image)
                    .font(.title2)
                Text(title)
                    .font(.caption.bold())
            }
            .foregroundColor(tabData.cuurentTab == title ? .black
                             : .gray)
            .frame(maxWidth: .infinity)
        }
    }
}
