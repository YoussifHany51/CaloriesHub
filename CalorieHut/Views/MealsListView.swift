//
//  MealsListView.swift
//  CalorieHut
//
//  Created by Youssif Hany on 06/04/2022.
//

import SwiftUI

struct MealsListView: View {
    @State var name:String
    @State var image:String
    @State var alertShow:Bool = false
    
    @EnvironmentObject var vm : MealViewModel
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            CategoryTitle
            // Search bar section
            SearchBarView(searchText: $vm.searchText)
            List{
                ForEach(vm.checkMealList(text: name, vm: vm)){ meal in
                    HStack {
                        VStack (alignment:.leading,spacing:5){
                            Text(meal.name)
                                .font(.body)
                            
                            HStack {
                                Text("\(meal.kcal.description)")
                                    .foregroundColor(.red)
                                Text("kcal")
                                Text("/")
                                Text("\(meal.quantity)")
                                Text(meal.unit)
                            }
                        }
                        Spacer()
                        
                        Group{
                            //MARK: FAV Button
                            Button{
                                
                                if vm.checkFav(
                                    name: meal.name,
                                    list: vm.favoriteMeals) {
                                    // Alert
                                    alertShow.toggle()
                                }
                                else{
                                    vm.addMealToFav(
                                        name: meal.name,
                                        kcal:meal.kcal,
                                        quantity: meal.quantity,
                                        unit: meal.unit)
                                }
                            }label: {
                                Image(systemName: "heart.fill")
                                    .foregroundColor(
                                        vm.checkFav(name: meal.name,
                                                    list: vm.favoriteMeals) ? .red : .gray
                                    )
                                    .padding()
                                
                            }
                            .buttonStyle(PlainButtonStyle())
                            .alert(isPresented: $alertShow, content: {
                                Alert(title:
                                        Text("This meal is already in your favorite list"))
                            })
                            
                            //MARK: Add button
                            Button{
                                vm.addMeal(name: meal.name,
                                           kcal: meal.kcal,
                                           quantity: meal.quantity,
                                           unit: meal.unit)
                                
                                vm.setCountKcal(count: meal.kcal)
                                
//                                HapticSoundManager.instance.playSound()
                                HapticSoundManager.instance.vibrationHaptic(type: .success)
                                print("Added")
                            }label: {
                                Image(systemName: "plus")
                                    .padding()
                            }
                            .buttonStyle(PlainButtonStyle())
                        }
                    }
                }
                
            }
            
        }
        .overlay(BackButton, alignment: .topLeading)
    }
}

struct MealsListView_Previews: PreviewProvider {
    static var previews: some View {
        MealsListView(name: "", image: "")
            .environmentObject(MealViewModel())
    }
}

extension MealsListView{
    private var BackButton: some View{
        Button{
            presentationMode.wrappedValue.dismiss()
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
    
    private var CategoryTitle:some View{
        ZStack (alignment: .bottom){
            Image(image)
                .resizable()
                .scaledToFit()
                .ignoresSafeArea()
                .cornerRadius(20)
            
            HStack{
                Text(name)
                    .font(.title)
                    .fontWeight(.black)
                    .foregroundColor(.white)
                    .padding()
                Spacer()
            }
        }
    }
    
}
