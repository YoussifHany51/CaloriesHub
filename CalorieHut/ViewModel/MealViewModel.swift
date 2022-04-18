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
    Meal(name: "Apple1", kcal: 15, quantity: 1, unit: "g", isFav: false),
    Meal(name: "Apple2", kcal: 15, quantity: 1, unit: "g", isFav: false),
    Meal(name: "Apple3", kcal: 15, quantity: 1, unit: "g", isFav: false),
    ]
    
    @Published var vegtablesList: [Meal]=[
    Meal(name: "Eggplant", kcal: 10, quantity: 1, unit: "g", isFav: false),
    ]
    
    
    @Published var meals:[Meal]=[]{
        didSet{
            saveMeal()
        }
    }
    
    @Published var userKcal:String = ""{
        didSet{
            saveUserKcal()
        }
    }
    
    @Published var favoriteMeals:[Meal]=[]{
        didSet{
            saveFav()
        }
    }
    
    @Published var kcalCount:[Float] = []{
        didSet{
            saveKcalData()
        }
    }
   
    
    @Published var showMealsEatenList: Bool = false
    @Published var showMealSheet:Bool = false
    @Published var userDailyCal:String = ""
    
    let mealKey:String = "mealList"
    
    let kcalKey:String = "kcalCount"
    
    let favMeals:String = "favMealList"
    
    let userDKcal:String = "userKcal"
    
    
    
   //MARK: init FUNC
    init(){
    getMeals()
    getMealKcal()
    getFavMeals()
    getUserKcal()
    getDay()
    deleteAtDayEnd()
    }
    //MARK: ADD MEAL
    // Add Meal
    func addMeal(name:String,kcal:Float,quantity:Int,unit:String){
        let newMeal = Meal(name: name, kcal: kcal, quantity: quantity,unit: unit,isFav: false)
        meals.append(newMeal)
    }
    

    
    func deleteKcal(indexSet:IndexSet){
        kcalCount.remove(atOffsets: indexSet)
    }
    
    func moveMeal(from:IndexSet,to:Int){
    meals.move(fromOffsets: from, toOffset: to)
    }
    
    func deleteMeal(indexSet:IndexSet){
     meals.remove(atOffsets:indexSet)
     deleteKcal(indexSet: indexSet)
    }
    
    func getMeals(){
        guard
            let data =  UserDefaults.standard.data(forKey: mealKey),
            let savedMeals = try? JSONDecoder().decode([Meal].self, from: data)
        else {return}
        self.meals = savedMeals
    }
    
    func saveMeal(){
        if let encoded=try? JSONEncoder().encode(meals){
            UserDefaults.standard.set(encoded, forKey: mealKey )
        }
    }
    
    //MARK: USER DAILY KCAL
    
    // Add user daily calorie needs
    func addKcal(kcal:String){
        let newKcal = kcal
        userKcal = newKcal
    }
    
    func getUserKcal(){
        guard
            let data = UserDefaults.standard.data(forKey: userDKcal),
            let savedKcal = try? JSONDecoder().decode(String.self, from: data)
        else {return}
        self.userKcal = savedKcal
    }
    // save user daily calorie needs
    func saveUserKcal(){
        if let encoded=try? JSONEncoder().encode(userKcal){
            UserDefaults.standard.set(encoded,forKey: userDKcal)
        }
    }
    // Add meal to the favorite list
    
    //MARK: FAV LIST
    func addMealToFav(name:String,kcal:Float,quantity:Int,unit:String){
        let newFav = Meal(name: name, kcal: kcal, quantity: quantity,unit: unit, isFav: true)
        favoriteMeals.append(newFav)
    }
    
    func getFavMeals(){
        guard
            let data = UserDefaults.standard.data(forKey: favMeals),
            let savedFav = try? JSONDecoder().decode([Meal].self,from: data)
        else{return}
        self.favoriteMeals = savedFav
    }
    
    // save meal to the favorite list
    func saveFav(){
        if let encoded=try? JSONEncoder().encode(favoriteMeals){
            UserDefaults.standard.set(encoded,forKey: favMeals)
        }
    }
    
    // check if the meal is selected to be favorite before or not
    func checkFav(name:String,list:[Meal]) ->Bool {
        
        if list.contains(where: {$0.name == name}){
            return true
        }
        return false
    }
    
    func deleteFavMeal(index:IndexSet){
        favoriteMeals.remove(atOffsets: index)
    }
    
    func moveFavMeal(from:IndexSet,to:Int){
    favoriteMeals.move(fromOffsets: from, toOffset: to)
    }
    
    //MARK: TOTAL KCAL
    func getMealKcal(){
        guard
            let data =  UserDefaults.standard.data(forKey: kcalKey),
            let savedkcal = try? JSONDecoder().decode([Float].self, from: data)
        else {return}
        self.kcalCount = savedkcal
    }
    
    // save total kcal
    func saveKcalData(){
        if let encoded=try? JSONEncoder().encode(kcalCount){
            UserDefaults.standard.set(encoded, forKey: kcalKey )
        }
    }
    
    // insert kcal in List
    func setCountKcal(count:Float){
        kcalCount.append(count)
    }
    
    // count the sum of kcal list
    func getCountKcal() -> Double {
        let total = kcalCount.reduce(0, +)
        return Double(total)
    }
    
    //MARK: Meal List Checker
    func checkMealList(text:String,vm:MealViewModel)-> [Meal]{

        if text == "Fruit"{
            return vm.fruitList
        }
        else {
            return vm.vegtablesList
        }
    }
    
    //MARK: DELETE AT THE END func
    
    
    @Published var day:Int = 0{
        didSet{
            saveDay()
        }
    }
    
    
    let dayEnd:String = "dayEnd"
    
    
    func addDay(d:Int){
        let newDay = d
        day = newDay
    }
    func getDay(){
        guard
            let data = UserDefaults.standard.data(forKey: dayEnd),
            let savedDay = try? JSONDecoder().decode(Int.self, from: data)
        else{return}
        self.day = savedDay
    }
    
    func saveDay(){
        if let encoded=try? JSONEncoder().encode(day){
            UserDefaults.standard.set(encoded, forKey: dayEnd )
        }
    }
    
    func deleteAtDayEnd(){
        let date = Date()
        let calender = Calendar.current
        let day1 = calender.component(.day, from: date)

        print(day1)
        print("hereeeee")
//        addDay(d: day1)
        if(day1 == day){
            addDay(d: day1)
        }else{
            meals.removeAll()
            kcalCount.removeAll()
            addDay(d: day1)
        }
        print(day)
        print("hereeee")
    }
}
