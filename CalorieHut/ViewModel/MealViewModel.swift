//
//  MealViewModel.swift
//  CalorieHut
//
//  Created by Youssif Hany on 05/04/2022.
//

import Foundation
class MealViewModel: ObservableObject{
    
    
    //MARK: CategoryList
    @Published var categorylist: [Category] = [
        Category(title: "Fruit", image: "Fruit"),
        Category(title: "Beef", image: "Beef"),
        Category(title: "Vegtable", image: "Vegtable"),
        Category(title: "Egg", image: "Egg"),
        Category(title: "Dessert", image: "Dessert"),
        Category(title: "HotDrink", image: "HotDrink"),
        Category(title: "ColdDrink", image: "ColdDrink"),
        Category(title: "Dairy", image: "Dairy"),
        Category(title: "Nuts", image: "Nuts"),
        Category(title: "SeaFood", image: "SeaFood"),
        ]
    // MARK: meals lists
    @Published var fruitList: [Meal]=[
    Meal(name: "Apple", kcal: 15, quantity: 1,isFav: false),
    Meal(name: "Apple", kcal: 15, quantity: 1,isFav: false),
    Meal(name: "Apple", kcal: 15, quantity: 1,isFav: false),
    ]
    
    @Published var vegtablesList: [Meal]=[
    Meal(name: "Eggplant", kcal: 10, quantity: 1,isFav: false),
    Meal(name: "Eggplant", kcal: 10, quantity: 1,isFav: false),
    Meal(name: "Eggplant", kcal: 10, quantity: 1,isFav: false),
    ]
    
    
    @Published var meals:[Meal]=[]{
        didSet{
            saveData()
        }
    }
    
    @Published var kcalCount:[Float] = []{
        didSet{
            saveKcalData()
        }
    }
    
    @Published var showMealsEatenList: Bool = false
    
    let mealKey:String = "mealList"
    
    let kcalKey:String = "kcalCount"
   
    init(){
    getMeals()
    getMealKcal()
    }
    
    func setCountKcal(count:Float){
        kcalCount.append(count)
    }
    
    func getCountKcal() -> Float {
        let total = kcalCount.reduce(0, +)
        return total
    }
    
    func deleteKcal(indexSet:IndexSet){
        kcalCount.remove(atOffsets: indexSet)
    }
    
    func deleteMeal(indexSet:IndexSet){
     meals.remove(atOffsets:indexSet)
     deleteKcal(indexSet: indexSet)
    }

     func moveMeal(from:IndexSet,to:Int){
     meals.move(fromOffsets: from, toOffset: to)
     }
    
    func addMeal(name:String,kcal:Float,quantity:Int,isFav:Bool){
        let newMeal = Meal(name: name, kcal: kcal, quantity: quantity,isFav: isFav)
        meals.append(newMeal)
    }
    
    func getMeals(){
        guard
            let data =  UserDefaults.standard.data(forKey: mealKey),
            let savedMeals = try? JSONDecoder().decode([Meal].self, from: data)
        else {return}
        self.meals = savedMeals
    }
    
    func saveData(){
        if let encoded=try? JSONEncoder().encode(meals){
            UserDefaults.standard.set(encoded, forKey: mealKey )
        }
    }
    
    func getMealKcal(){
        guard
            let data =  UserDefaults.standard.data(forKey: kcalKey),
            let savedMeals = try? JSONDecoder().decode([Float].self, from: data)
        else {return}
        self.kcalCount = savedMeals
    }
    
    func saveKcalData(){
        if let encoded=try? JSONEncoder().encode(kcalCount){
            UserDefaults.standard.set(encoded, forKey: kcalKey )
        }
    }
}
