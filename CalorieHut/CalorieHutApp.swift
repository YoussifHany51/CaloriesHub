//
//  CalorieHutApp.swift
//  CalorieHut
//
//  Created by Youssif Hany on 04/04/2022.
//

import SwiftUI

@main
struct CalorieHutApp: App {
    
    @StateObject var vm : MealViewModel=MealViewModel()
    var body: some Scene {
        WindowGroup {
            TabBarView()
                .environmentObject(vm)
        }
    }
}
