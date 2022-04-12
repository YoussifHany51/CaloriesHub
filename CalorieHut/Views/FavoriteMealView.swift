//
//  FavoriteMealView.swift
//  CalorieHut
//
//  Created by Youssif Hany on 09/04/2022.
//

import SwiftUI

struct FavoriteMealView: View {
    @EnvironmentObject var vm : MealViewModel
    
    var body: some View {
        if vm.favoriteMeals.isEmpty{
            Text("No Favorite meals !!")
                .font(.largeTitle)
        }
        else {
            NavigationView {
                ZStack {
                    Color.brown.opacity(0.5)
                        .ignoresSafeArea()
                    VStack {
                        List{
                            ForEach(vm.favoriteMeals){ fav in
                                HStack{
                                    Text(fav.name)
                                    
                                    HStack {
                                        Text("\(fav.kcal.description)")
                                            .foregroundColor(.red)
                                        Text("kcal")
                                        Text("per")
                                        Text("\(fav.quantity)")
                                        Text(fav.unit)
                                    }
                                    Spacer()
                                    
                                    Button{
                                        vm.addMeal(name: fav.name,
                                                   kcal: fav.kcal,
                                                   quantity: fav.quantity,
                                                   unit: fav.unit)
                                        vm.setCountKcal(count: fav.kcal)
                                        print("Added")
                                    }label: {
                                        Image(systemName: "plus")
                                            .padding()
                                    }
                                    .buttonStyle(PlainButtonStyle())
                                }
                            }
                            .onDelete(perform: vm.deleteFavMeal)
                        }
                        .navigationTitle("Favorite Meals")
                    }
                }
            }
        }
    }
}

struct FavoriteMealView_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteMealView()
            .environmentObject(MealViewModel())
    }
}
