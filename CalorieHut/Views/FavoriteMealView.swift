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
        NavigationView {
            ZStack {
                Color(.systemBrown).opacity(0.5)
                    .ignoresSafeArea()
            if vm.favoriteMeals.isEmpty{
                Text("No Favorite meals !!")
                    .font(.largeTitle)
            }
            else {
                    VStack {
                        List{
                            ForEach(vm.favoriteMeals){ fav in
                                HStack{
                                    VStack(alignment:.leading){
                                        Text(fav.name)
                                        
                                        HStack {
                                            Text("\(fav.kcal.description)")
                                                .foregroundColor(.red)
                                            Text("kcal")
                                            Text("per")
                                            Text("\(fav.quantity)")
                                            Text(fav.unit)
                                        }
                                    }
                                    
                                    Spacer()
                                    
                                    Button{
                                        vm.addMeal(name: fav.name,
                                                   kcal: fav.kcal,
                                                   quantity: fav.quantity,
                                                   unit: fav.unit)
                                        vm.setCountKcal(count: fav.kcal)
                                        print("Added")
                                        SoundManager.instance.playSound()
                                    }label: {
                                        Image(systemName: "plus")
                                            .padding()
                                    }
                                    .buttonStyle(PlainButtonStyle())
                                }
                            }
                            .onDelete(perform: vm.deleteFavMeal)
                            .onMove(perform: vm.moveFavMeal)
                        }
                        .navigationTitle("Favorite Meals")
                        .navigationBarItems(leading: EditButton())
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
