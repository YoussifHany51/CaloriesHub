//
//  CaloriesHubApp.swift
//  CaloriesHub
//
//  Created by Youssif Hany on 04/04/2022.
//

import SwiftUI

@main
struct CaloriesHubApp: App {
    init(){
        NotificationManager.instance.requestAuthorization()
    }
    @StateObject var vm : MealViewModel=MealViewModel()
    var body: some Scene {
        WindowGroup {
            TabBarView()
                .environmentObject(vm)
        }
    }
}
