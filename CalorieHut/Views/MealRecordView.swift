//
//  MealRecordView.swift
//  CalorieHut
//
//  Created by Youssif Hany on 24/04/2022.
//

import SwiftUI

struct MealRecordView: View {
    @EnvironmentObject var vm : MealViewModel
    
    var body: some View {
        NavigationView{
            ZStack {
                Color(.systemBrown).opacity(0.5)
                    .ignoresSafeArea()
            if vm.meals.isEmpty{
                Text("No Meals yet !!")
                    .font(.largeTitle)
            }else{
                
                    VStack {
                    List{
                        ForEach(vm.meals){ meal in
                            HStack {
                                VStack(alignment:.leading){
                                    Text(meal.name)
                                    
                                    HStack {
                                        Text("\(meal.kcal.description)")
                                            .foregroundColor(.red)
                                            
                                        Text("Kcal")
                                            .foregroundColor(.gray)
                                        
//                                        Spacer()
//                                        Text(vm.extractMealDate())
                                    }
                                }
                                .padding()
                                .listRowBackground(Color.clear)
                            }
                        }
                        .onDelete(perform: vm.deleteMeal)
                        .onMove(perform: vm.moveMeal)
                    }
                    .navigationTitle("Meals's record")
                    }
                }
            }
        }
        .overlay(backButton, alignment: .topLeading)
    }
}

struct MealRecordView_Previews: PreviewProvider {
    static var previews: some View {
        MealRecordView()
            .environmentObject(MealViewModel())
    }
}


extension MealRecordView {
    
    private var backButton: some View{
        Button{
            vm.showMealsEatenList.toggle()
        } label:{
            Image(systemName: "xmark")
                .font(.headline)
                .padding(10)
                .foregroundColor(.primary)
                .background(.ultraThickMaterial)
                .cornerRadius(10)
                .shadow(radius: 4)
                .padding()
        }
    }
}
