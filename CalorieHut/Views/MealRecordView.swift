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
                                VStack(alignment:.leading,spacing: 10){
                                    Text(meal.name)
                                        .font(.title)
                                    
                                    HStack {
                                        Text("\(meal.kcal.description)")
                                            .foregroundColor(.gray)
                                            
                                        Text("Kcal")
                                            .foregroundColor(.red)
                                    }
                                    .font(.subheadline)
                                    .padding(.leading)
                                }
                                .padding()
                            .listRowBackground(Color.clear)
                            }
                        }
                        .onDelete(perform: vm.deleteMeal)
                        .onMove(perform: vm.moveMeal)
                    }
                    .navigationTitle("Today's record")
                    .navigationBarItems(leading: EditButton())
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
                .padding(16)
                .foregroundColor(.primary)
                .background(.ultraThickMaterial)
                .cornerRadius(10)
                .shadow(radius: 4)
                .padding()
        }
    }
}
