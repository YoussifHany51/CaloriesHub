//
//  MealViewModel.swift
//  CaloriesHub
//
//  Created by Youssif Hany on 05/04/2022.
//

import Foundation

class MealViewModel: ObservableObject{
    
    
    // MARK: Beef list
    
    @Published var beefList:[Meal]=[
        Meal(name: "Beef", kcal: 171, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Beef Brisket", kcal: 137, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Beef Fillet", kcal: 189, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Beef Goulash", kcal: 123, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Beef Neck", kcal: 213, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Beef Patty", kcal: 247, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Beef Prime Rib", kcal: 404, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Beef Ribs", kcal: 196, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Beef Sirloin", kcal: 182, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Beef Tallow", kcal: 902, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Beef Thymus", kcal: 319, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Beef Tripe", kcal: 94, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "BBQ Ribs", kcal: 255, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Minced Veal", kcal: 143, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Rib Eye Steak", kcal: 217, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Roast Beef", kcal: 187, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Rump Steak", kcal: 171, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Strip Steak", kcal: 117, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "T-Bone-Steak", kcal: 221, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Veal", kcal: 282, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Veal Breast", kcal: 282, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Veal Leg", kcal: 211, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Veal Roast Beef", kcal: 175, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Veal Shoulder", kcal: 183, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Baked Ham", kcal: 343, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Beef Salami", kcal: 375, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Boiled Ham", kcal: 126, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Chicken Breast Fillet", kcal: 183, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Dutch Loaf", kcal: 268, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Ham", kcal: 145, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Ham Sausage", kcal: 164, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Liverwurst", kcal: 326, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Pastrami", kcal: 133, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Pepperoni", kcal: 183, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Roast Beef", kcal: 183, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Salami", kcal: 336, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Smoked Ham", kcal: 107, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Smoked Turkey Breast", kcal: 104, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Summer Sausage", kcal: 298, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Turkey Breast", kcal: 104, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Turkey Ham", kcal: 126, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Turkey Salami", kcal: 152, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Bacon and Eggs", kcal: 252, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Baked Chicken", kcal: 164, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "California Roll", kcal: 93, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Chicken Caesar Salad", kcal: 127, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Chicken Fried Steak", kcal: 151, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Chicken Marsala", kcal: 96, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Kebab", kcal: 215, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Lasagne", kcal: 132, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Meat Pie", kcal: 242, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Mac and Cheese", kcal: 370, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Macaroni and Cheese", kcal: 370, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Mashed Potatoes", kcal: 83, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Sausage Roll", kcal: 350, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Spring Roll", kcal: 250, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Tandoori Chicken", kcal: 113, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Chicken Breast", kcal: 172, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Chicken Drumstick", kcal: 185, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Chicken Liver", kcal: 167, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Chicken Wing", kcal: 266, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Duck", kcal: 337, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Turkey", kcal: 189, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Turkey Breast", kcal: 135, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Turkey Steak", kcal: 189, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Turkey Wings", kcal: 221, quantity: 100, unit: "g", isFav: false, date: Date()),
            ]
   
    // MARK: Fast Food list
    @Published var fastFoodList : [Meal]=[
        Meal(name: "Burger King Angry Whopper", kcal: 740, quantity: 290, unit: "g", isFav: false, date: Date()),
        Meal(name: "Burger King Double Whopper", kcal: 894, quantity: 374, unit: "g", isFav: false, date: Date()),
        Meal(name: "Burger King Double Whopper with Cheese", kcal:994, quantity:399, unit:"g", isFav: false, date: Date()),
        Meal(name: "Burger King Original Chicken Sandwich", kcal:659, quantity:219, unit:"g", isFav:false,date:Date()),
        Meal(name: "Cheeseburger", kcal: 410, quantity: 156, unit: "g", isFav: false, date: Date()),
        Meal(name: "Chicken Breast", kcal: 163, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Chicken Fajita", kcal: 147, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Chicken Wings", kcal: 324, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Curly Fries", kcal: 311, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "French Fries", kcal: 312, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Hot Dog", kcal: 269, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Lasagna", kcal: 132, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "McDonald’s Big Mac", kcal: 561, quantity: 219, unit: "g", isFav: false, date: Date()),
        Meal(name: "McDonald’s Cheeseburger", kcal: 300, quantity: 114, unit: "g", isFav: false, date: Date()),
        Meal(name: "McDonald’s Double Cheeseburger", kcal: 437, quantity: 155, unit: "g", isFav: false, date: Date()),
        Meal(name: "McDonald’s McChicken", kcal: 359, quantity: 143, unit: "g", isFav: false, date: Date()),
        Meal(name: "Meatball Sandwich", kcal: 481, quantity: 299, unit: "g", isFav: false, date: Date()),
        Meal(name: "Zinger", kcal: 517, quantity: 202, unit: "g", isFav: false, date: Date()),
        Meal(name: "Smoked Salmon", kcal: 158, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "BBQ Chicken Pizza", kcal: 234, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Beef Pizza", kcal: 304, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Buffalo Chicken Pizza", kcal: 252, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Calzone", kcal: 231, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Cheese Pizza", kcal: 267, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Chicken Pizza", kcal: 234, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Dominos Philly Cheese Steak Pizza", kcal: 224, quantity:100, unit:"g", isFav: false, date: Date()),
        Meal(name: "Grilled Pizza", kcal: 226, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Hawaiian Pizza", kcal: 115, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Margherita Pizza", kcal: 275, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Mozzarella Pizza", kcal: 249, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Mushroom Pizza", kcal: 212, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Pepperoni Pizza", kcal: 255, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Pizza Hut Stuffed Crust Pizza", kcal: 255, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Pizza Hut Supreme Pizza", kcal: 248, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Salami Pizza", kcal: 255, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Seafood Pizza", kcal: 245, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Shrimp Pizza", kcal: 209, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Thin Crust Pizza", kcal: 261, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Tuna Pizza", kcal: 254, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Vegetable Pizza", kcal: 256, quantity: 100, unit: "g", isFav: false, date: Date()),
    ]
    
    @Published var seaFoodList: [Meal] = [
        Meal(name: "Anchovy", kcal: 131, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Bluefish", kcal: 159, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Butterfish", kcal: 187, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Calamari", kcal: 175, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Carp", kcal: 162, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Caviar", kcal: 264, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Clam", kcal: 148, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Cod", kcal: 105, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Crawfish", kcal: 82, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Crayfish", kcal: 87, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Fish Sticks", kcal: 290, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Grouper", kcal: 118, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Haddock", kcal: 90, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Hake", kcal: 71, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Herring", kcal: 203, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Hoki", kcal: 121, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Ling", kcal: 109, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Mackerel", kcal: 262, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Mullet", kcal: 150, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Mussel", kcal: 172, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Pickled Herring", kcal: 262, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Pollack", kcal: 111, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Red Snapper", kcal: 128, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Redfish", kcal: 94, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Rollmops", kcal: 171, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Salmon", kcal: 206, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Sardines", kcal: 208, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Scallops", kcal: 111, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Smelt", kcal: 124, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Squid", kcal: 92, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Sturgeon", kcal: 135, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Sushi", kcal: 150, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Shrimp", kcal: 99, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Freid Shrimp", kcal: 277, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Triggerfish", kcal: 93, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Trout", kcal: 190, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Tuna", kcal: 132, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Tuna Salad", kcal: 187, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Whitefish", kcal: 172, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Whiting", kcal: 116, quantity: 100, unit: "g", isFav: false, date: Date()),
        Meal(name: "Zander", kcal: 84, quantity: 100, unit: "g", isFav: false, date: Date()),
    ]
    // MARK: Hot drinks list
    @Published var hotDrinksList: [Meal] = [
        Meal(name: "Chai Tea", kcal: 0, quantity: 100, unit: "ml", isFav: false, date: Date()),
        Meal(name: "Chocolate Milk", kcal: 89, quantity: 100, unit: "ml", isFav: false, date: Date()),
        Meal(name: "Coffee", kcal: 1, quantity: 100, unit: "ml", isFav: false, date: Date()),
        Meal(name: "Ginger Tea", kcal: 0, quantity: 100, unit: "ml", isFav: false, date: Date()),
        Meal(name: "Cappuccino", kcal: 165, quantity: 100, unit: "ml", isFav: false, date: Date()),
        Meal(name: "Hot Chocolate", kcal: 89, quantity: 100, unit: "ml", isFav: false, date: Date()),
        Meal(name: "Latte Macchiato", kcal: 57, quantity: 100, unit: "ml", isFav: false, date: Date()),
        Meal(name: "Flat White", kcal: 179, quantity: 100, unit: "ml", isFav: false, date: Date()),
    ]
    
    // MARK: Cold Drinks list
    @Published var coldDrinksList: [Meal]=[
        Meal(name: "Acai Juice", kcal: 58, quantity: 100, unit: "ml", isFav: false, date: Date()),
        Meal(name: "Aloe Vera", kcal: 44, quantity: 100, unit: "ml", isFav: false, date: Date()),
        Meal(name: "Apple Juice", kcal: 46, quantity: 100, unit: "ml", isFav: false, date: Date()),
        Meal(name: "Apricot Nectar", kcal: 56, quantity: 100, unit: "ml", isFav: false, date: Date()),
        Meal(name: "Banana Juice", kcal: 50, quantity: 100, unit: "ml", isFav: false, date: Date()),
        Meal(name: "Blackberry Juice", kcal: 48, quantity: 100, unit: "ml", isFav: false, date: Date()),
        Meal(name: "Boysenberry Juice", kcal: 54, quantity: 100, unit: "ml", isFav: false, date: Date()),
        Meal(name: "Capri-Sun", kcal: 41, quantity: 100, unit: "ml", isFav: false, date: Date()),
        Meal(name: "Carrot Juice", kcal: 58, quantity: 100, unit: "ml", isFav: false, date: Date()),
        Meal(name: "Cherry Juice", kcal: 45, quantity: 100, unit: "ml", isFav: false, date: Date()),
        Meal(name: "Coconut Milk", kcal: 233, quantity: 100, unit: "ml", isFav: false, date: Date()),
        Meal(name: "Coconut Water", kcal: 19, quantity: 100, unit: "ml", isFav: false, date: Date()),
        Meal(name: "Concord Grape", kcal: 71, quantity: 100, unit: "ml", isFav: false, date: Date()),
        Meal(name: "Cucumber Juice", kcal: 10, quantity: 100, unit: "ml", isFav: false, date: Date()),
        Meal(name: "Energy-Drink", kcal: 87, quantity: 100, unit: "ml", isFav: false, date: Date()),
        Meal(name: "Grape Juice", kcal: 60, quantity: 100, unit: "ml", isFav: false, date: Date()),
        Meal(name: "Grapefruit Juice", kcal: 46, quantity: 100, unit: "ml", isFav: false, date: Date()),
        Meal(name: "Lemon Juice", kcal: 19, quantity: 100, unit: "ml", isFav: false, date: Date()),
    Meal(name: "Orange Juice", kcal: 46, quantity: 100, unit: "ml", isFav: false, date: Date()),
    Meal(name: "Passion Fruit Juice", kcal: 48, quantity: 100, unit: "ml", isFav: false, date: Date()),
    Meal(name: "Peach Juice", kcal: 54, quantity: 100, unit: "ml", isFav: false, date: Date()),
    Meal(name: "Pineapple Juice", kcal: 53, quantity: 100, unit: "ml", isFav: false, date: Date()),
    Meal(name: "Plum Juice", kcal: 71, quantity: 100, unit: "ml", isFav: false, date: Date()),
    Meal(name: "Tangerine Juice", kcal: 43, quantity: 100, unit: "ml", isFav: false, date: Date()),
    Meal(name: "Tomato Juice", kcal: 17, quantity: 100, unit: "ml", isFav: false, date: Date()),
    Meal(name: "Vegetable Juice", kcal: 21, quantity: 100, unit: "ml", isFav: false, date: Date()),
    Meal(name: "White Grape Juice", kcal: 75, quantity: 100, unit: "ml", isFav: false, date: Date()),
    Meal(name: "7up", kcal: 44, quantity: 100, unit: "ml", isFav: false, date: Date()),
    Meal(name: "Coke", kcal: 42, quantity: 100, unit: "ml", isFav: false, date: Date()),
    Meal(name: "Coke Zero", kcal: 0, quantity: 100, unit: "ml", isFav: false, date: Date()),
    Meal(name: "Diet Dr. Pepper", kcal: 0, quantity: 100, unit: "ml", isFav: false, date: Date()),
    Meal(name: "Diet Pepsi", kcal: 0, quantity: 100, unit: "ml", isFav: false, date: Date()),
    Meal(name: "Dr. Pepper", kcal: 27, quantity: 100, unit: "ml", isFav: false, date: Date()),
    Meal(name: "Fanta", kcal: 39, quantity: 100, unit: "ml", isFav: false, date: Date()),
    Meal(name: "Ice Tea", kcal: 27, quantity: 100, unit: "ml", isFav: false, date: Date()),
    Meal(name: "Orange Soda", kcal: 48, quantity: 100, unit: "ml", isFav: false, date: Date()),
    Meal(name: "Pepsi", kcal: 44, quantity: 100, unit: "ml", isFav: false, date: Date()),
    Meal(name: "Sprite", kcal: 37, quantity: 100, unit: "ml", isFav: false, date: Date()),
    Meal(name: "Sprite Zero", kcal: 0, quantity: 100, unit: "ml", isFav: false, date: Date()),
    Meal(name: "Tonic Water", kcal: 35, quantity: 100, unit: "ml", isFav: false, date: Date()),
    Meal(name: "Vanilla Coke", kcal: 37, quantity: 100, unit: "ml", isFav: false, date: Date()),
    Meal(name: "Chocolate Milkshake", kcal: 125, quantity: 100, unit: "ml", isFav: false, date: Date()),
    Meal(name: "Milkshake (dry)", kcal: 329, quantity: 100, unit: "ml", isFav: false, date: Date()),
    Meal(name: "Smoothie", kcal: 37, quantity: 100, unit: "ml", isFav: false, date: Date()),
    Meal(name: "Strawberry Milkshake", kcal: 113, quantity: 100, unit: "ml", isFav: false, date: Date()),
    Meal(name: "Vanilla Milkshake", kcal: 149, quantity: 100, unit: "ml", isFav: false, date: Date()),
    ]
    // MARK: Fruit list
    @Published var fruitList: [Meal]=[
    Meal(name: "Apple", kcal: 52, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Acai", kcal: 70, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Applesauce", kcal: 68, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Avocado", kcal: 160, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Banana", kcal: 89, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Blackberries", kcal: 43, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Blueberries", kcal: 57, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Cantaloupe", kcal: 34, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Cherries", kcal: 50, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Clementine", kcal: 47, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Dates", kcal: 282, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Fruit salad", kcal: 50, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Grapes", kcal: 69, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Guava", kcal: 68, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Jackfruit", kcal: 95, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Kiwi", kcal: 61, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Lime", kcal: 30, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Mango", kcal: 60, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Orange", kcal: 47, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Passion Fruit", kcal: 97, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Peach", kcal: 39, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Pear", kcal: 57, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Pineapple", kcal: 50, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Pomegranate", kcal: 83, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Raspberries", kcal: 52, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Strawberries", kcal: 32, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Tangerine", kcal: 53, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Watermelon", kcal: 30, quantity: 100, unit: "g", isFav: false, date: Date()),
    ]
    // MARK: Vegetable list
    @Published var vegetablesList: [Meal]=[
    Meal(name: "Arugula", kcal: 25, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Aubergine", kcal: 25, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Asparagus", kcal: 20, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Bell Pepper", kcal: 20, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Black Olives", kcal: 115, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Broccoli", kcal: 34, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Brussels Sprouts", kcal: 43, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Capsicum", kcal: 27, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Cabbage", kcal: 25, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Carrot", kcal: 41, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Chard", kcal: 19, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Cherry Tomato", kcal: 100, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Chicory", kcal: 72, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Chinese Cabbage", kcal: 16, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Chives", kcal: 30, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Corn", kcal: 365, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Cucumber", kcal: 16, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Eggplant", kcal: 10, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Fennel", kcal: 31, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Garlic", kcal: 149, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Gherkin", kcal: 14, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Green Beans", kcal: 31, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Green Olives", kcal: 115, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Green Onion", kcal: 32, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Kohlrabi", kcal: 27, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Lettuce", kcal: 15, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Mushrooms", kcal: 22, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Mashed Potatoes", kcal: 83, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Mustard Greens", kcal: 27, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Okra", kcal: 33, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Olives", kcal: 115, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Onion", kcal: 40, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Peas", kcal: 81, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Pepper", kcal: 27, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Potato", kcal: 77, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Pumpkin", kcal: 26, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Red Cabbage", kcal: 31, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Sweet Potato", kcal: 86, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Tomato", kcal: 18, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Wasabi", kcal: 109, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Zucchini", kcal: 17, quantity: 100, unit: "g", isFav: false, date: Date()),
    ]
    // MARK: Nuts list
    @Published var nutsList:[Meal]=[
    Meal(name: "Acorn", kcal: 387, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Almonds", kcal: 23, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Beechnut", kcal: 576, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Brazil Nuts", kcal: 656, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Butternut", kcal: 612, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Chestnut", kcal: 213, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Coconut", kcal: 354, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Ginkgo Nuts", kcal: 182, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Goa Bean", kcal: 409, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Hazelnut", kcal: 628, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Hickory Nuts", kcal: 657, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Lima Beans", kcal: 71, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Macadamia Nuts", kcal: 718, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Peanuts", kcal: 567, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Peas", kcal: 81, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Pecan Nuts", kcal: 691, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Pistachios", kcal: 562, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Sweet Chestnut", kcal: 194, quantity: 100, unit: "g", isFav: false, date: Date()),
    ]
    
    // MARK: Pasta list
    @Published var pastaList:[Meal]=[
    Meal(name: "Cannelloni", kcal: 146, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Capellini", kcal: 353, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Cappelletti", kcal: 164, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Cellophane Noodles", kcal: 351, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Cheese Tortellini", kcal: 291, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Dampfnudel", kcal: 274, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Egg Noodles", kcal: 384, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Fettuccine", kcal: 353, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Fusilli", kcal: 352, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Glass Noodles", kcal: 192, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Lasagne Sheets", kcal: 271, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Linguine", kcal: 357, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Macaroni", kcal: 370, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Manicotti", kcal: 357, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Mostaccioli", kcal: 184, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Orecchiette", kcal: 370, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Orzo", kcal: 357, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Ravioli", kcal: 77, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Rigatoni", kcal: 353, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Rotini", kcal: 353, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Soy Noodles", kcal: 216, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Shirataki Noodles", kcal: 18, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Spaghetti", kcal: 370, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Spinach Tortellini", kcal: 314, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Tortellini", kcal: 291, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Vermicelli", kcal: 368, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Whole Grain Noodles", kcal: 347, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Whole Grain Spaghetti", kcal: 351, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Ziti", kcal: 352, quantity: 100, unit: "g", isFav: false, date: Date()),
    ]
    
    // MARK: Dairy list
    @Published var dairyList:[Meal]=[
    Meal(name: "Almond Milk", kcal: 17, quantity: 100, unit: "ml", isFav: false, date: Date()),
    Meal(name: "Buttermilk", kcal: 62, quantity: 100, unit: "ml", isFav: false, date: Date()),
    Meal(name: "Chocolate Mousse", kcal: 225, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Coconut Milk", kcal: 230, quantity: 100, unit: "ml", isFav: false, date: Date()),
    Meal(name: "Coffee Creamer", kcal: 195, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Condensed Milk", kcal: 321, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Cottage Cheese", kcal: 98, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Cheddar", kcal: 403, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Edam Cheese", kcal: 357, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Fresh Mozzarella", kcal: 280, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Gouda Cheese", kcal: 356, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Cream", kcal: 242, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Creme Fraiche", kcal: 393, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Curd", kcal: 98, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Custard", kcal: 122, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Evaporated Milk", kcal: 135, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Goat Milk", kcal: 69, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Hot Chocolate", kcal: 89, quantity: 100, unit: "ml", isFav: false, date: Date()),
    Meal(name: "Kefir", kcal: 55, quantity: 100, unit: "ml", isFav: false, date: Date()),
    Meal(name: "Lactose-free Milk", kcal: 52, quantity: 100, unit: "ml", isFav: false, date: Date()),
    Meal(name: "Lassi", kcal: 75, quantity: 100, unit: "ml", isFav: false, date: Date()),
    Meal(name: "Milk", kcal: 61, quantity: 100, unit: "ml", isFav: false, date: Date()),
    Meal(name: "Plain Yogurt", kcal: 61, quantity: 100, unit: "ml", isFav: false, date: Date()),
    Meal(name: "Powdered Milk", kcal: 496, quantity: 100, unit: "ml", isFav: false, date: Date()),
    Meal(name: "Rice Milk", kcal: 49, quantity: 100, unit: "ml", isFav: false, date: Date()),
    Meal(name: "Rice Pudding", kcal: 118, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Semi-skimmed Milk", kcal: 50, quantity: 100, unit: "ml", isFav: false, date: Date()),
    Meal(name: "Semolina Pudding", kcal: 67, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Skim Milk", kcal: 35, quantity: 100, unit: "ml", isFav: false, date: Date()),
    Meal(name: "Sour Cream", kcal: 181, quantity: 100, unit: "ml", isFav: false, date: Date()),
    Meal(name: "Sweetened Condensed Milk", kcal: 321, quantity: 100, unit: "ml", isFav: false, date: Date()),
    Meal(name: "Whipped Cream", kcal: 257, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Whole Milk", kcal: 61, quantity: 100, unit: "ml", isFav: false, date: Date()),
    Meal(name: "Yogurt", kcal: 61, quantity: 100, unit: "g", isFav: false, date: Date()),
    ]
    
    // MARK: Dessert list
    @Published var dessertList:[Meal]=[
    Meal(name: "Apple Cake", kcal: 252, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Apple Pie", kcal: 237, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Baked Alaska", kcal: 247, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Banoffee Pie", kcal: 395, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Birthday Cake", kcal: 465, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Black and White Cookie", kcal: 381, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Black Forest Cake", kcal: 264, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Blueberry Muffin", kcal: 377, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Blueberry Pie", kcal: 232, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Buttermilk Pie", kcal: 380, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Caramel Cake", kcal: 475, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Carrot Cake", kcal: 408, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Cheesecake", kcal: 321, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Cherry Pie", kcal: 260, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Chocolate Cake", kcal: 389, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Chocolate Cream Pie", kcal: 304, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Chocolate Muffin", kcal: 420, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Coconut Cake", kcal: 356, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Coffee Cake", kcal: 331, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Cupcake", kcal: 305, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Donut", kcal: 403, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Fruit Cake", kcal: 324, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Ice Cream Cake", kcal: 200, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Lemon Cake", kcal: 352, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Pancake", kcal: 227, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Peach Pie", kcal: 223, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Raspberry Pie", kcal: 240, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Strawberry Cheesecake", kcal: 327, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Strawberry Pie", kcal: 230, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Sweet Potato Pie", kcal: 260, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Swiss Roll", kcal: 439, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Trifle", kcal: 180, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Butterfinger", kcal: 450, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Buttermilk Pancakes", kcal: 238, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Candy Apple", kcal: 152, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Candy canes", kcal: 423, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Caramel Popcorn", kcal: 376, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Chocolate Bar", kcal: 533, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Cookies", kcal: 488, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Cotton Candy", kcal: 643, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Fairy Cakes", kcal: 440, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Jelly Beans", kcal: 354, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Kit Kat", kcal: 521, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Lollipop", kcal: 392, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "M&M’s", kcal: 479, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Maltesers", kcal: 498, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Mars Bar", kcal: 448, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Marshmallows", kcal: 318, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Milky Way", kcal: 449, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Peanut Bar", kcal: 533, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Peanut Brittle", kcal: 183, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Peanut Butter Cookies", kcal: 475, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Popcorn", kcal: 582, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Snickers", kcal: 484, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Twix", kcal: 495, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Baskin-Robbins", kcal: 239, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Chocolate Ice Cream", kcal: 216, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Ice Cream Sandwich", kcal: 237, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Strawberry Ice Cream", kcal: 236, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Vanilla Cone", kcal: 162, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Vanilla Ice Cream", kcal: 201, quantity: 100, unit: "g", isFav: false, date: Date()),
    ]
    // MARK: Pastries list
    @Published var pastriesList:[Meal]=[
    Meal(name: "Banana Bread", kcal: 326, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Banana Nut Bread", kcal: 326, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Black Bread", kcal: 250, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Bread Pudding", kcal: 153, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Bran Muffins", kcal: 270, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Brown Bread", kcal: 246, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Brownies", kcal: 405, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Bun", kcal: 316, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Cinnamon Bun", kcal: 436, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Cornbread", kcal: 179, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Crepes", kcal: 224, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Croissant", kcal: 406, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Cupcakes", kcal: 305, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Donut/Doughnut", kcal: 421, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "English Muffin", kcal: 227, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Garlic Bread", kcal: 350, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Hot Dog Buns", kcal: 279, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Italian Bread", kcal: 271, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Muffin", kcal: 296, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Potato Bread", kcal: 266, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Roll", kcal: 316, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Sandwich Bread", kcal: 251, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Swiss Roll", kcal: 313, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Toast", kcal: 261, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "Tortilla", kcal: 297, quantity: 100, unit: "g", isFav: false, date: Date()),
    Meal(name: "White Bread", kcal: 238, quantity: 100, unit: "g", isFav: false, date: Date()),
    ]
    
    //MARK: CategoryList
    @Published var categorylist: [Category] = [
        Category(title: "Fruit", image: "Fruit"),
        Category(title: "Beef & Chicken", image: "Beef"),
        Category(title: "Fast Food", image: "fastFood"),
        Category(title: "Vegetable", image: "Vegetable"),
        Category(title: "Pasta", image: "Pasta"),
        Category(title: "Dessert", image: "Dessert"),
        Category(title: "Hot Drinks", image: "HotDrink"),
        Category(title: "Cold Drinks", image: "ColdDrink"),
        Category(title: "Dairy", image: "Dairy"),
        Category(title: "Pastries", image: "Pastries"),
        Category(title: "Nuts", image: "Nuts"),
        Category(title: "SeaFood", image: "SeaFood"),
        ]
    
    //MARK: Meal List Checker
    func checkMealList(text:String,vm:MealViewModel)-> [Meal]{

        if text == "Fruit"{
            return  self.filterMeals(text: self.searchText, mealList: vm.fruitList)
        }
        else if text == "Vegetable"{
            return self.filterMeals(text: self.searchText, mealList: vm.vegetablesList)
        }
        else if text == "Dessert"{
            return self.filterMeals(text: self.searchText, mealList: vm.dessertList)
        }
        else if text == "Nuts"{
            return self.filterMeals(text: self.searchText, mealList: vm.nutsList)
        }
        else if text == "SeaFood"{
            return self.filterMeals(text: self.searchText, mealList: vm.seaFoodList)
        }
        else if text == "Beef & Chicken"{
            return self.filterMeals(text: self.searchText, mealList: vm.beefList)
        }
        else if text == "Fast Food"{
            return self.filterMeals(text: self.searchText, mealList: vm.fastFoodList)
        }
        else if text == "Dairy"{
            return self.filterMeals(text: self.searchText, mealList: vm.dairyList)
        }
        else if text == "Hot Drinks"{
            return self.filterMeals(text: self.searchText, mealList: vm.hotDrinksList)
        }
        else if text == "Cold Drinks"{
            return self.filterMeals(text: self.searchText, mealList: vm.coldDrinksList)
        }
        else if text == "Dessert"{
            return self.filterMeals(text: self.searchText, mealList: vm.dessertList)
        }
        else if text == "Pastries"{
            return self.filterMeals(text: self.searchText, mealList: vm.pastriesList)
        }
        else{
            return self.filterMeals(text: self.searchText, mealList: vm.pastaList)
        }
    }
    
    
    
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
   
    
    @Published var userDailyCal:String = ""
    @Published var searchText:String = ""
    @Published var date = Date()
    
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
    NotificationManager.instance.pushNotification()
    }
    //MARK: FilterMeals
    private func filterMeals(text:String , mealList:[Meal]) -> [Meal]{
        guard !text.isEmpty else{
            return mealList
        }
        
        let lowerCased = text.lowercased()
        
        return mealList.filter { (mealList) -> Bool in
            return mealList.name.lowercased().contains(lowerCased)
        }
    }
    
//    func extractMealDate()->String{
//        let date = Date()
//        let calendar = Calendar.current
//        let hour = calendar.component(.hour, from: date)
//        let minutes = calendar.component(.minute, from: date)
//        return String(hour) + ":" + String(minutes)
//    }
    
    //MARK: ADD & Delete MEAL
    
    func addMeal(name:String,kcal:Float,quantity:Int,unit:String,date:Date){
        let newMeal = Meal(name: name, kcal: kcal, quantity: quantity,unit: unit,isFav: false, date: date)
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
    func addMealToFav(name:String,kcal:Float,quantity:Int,unit:String,date:Date){
        let newFav = Meal(name: name, kcal: kcal, quantity: quantity,unit: unit, isFav: true, date: date)
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

//        print(day1)
//        print("hereeeee")
//        addDay(d: day1)
        if(day1 == day){
            addDay(d: day1)
        }else{
            meals.removeAll()
            kcalCount.removeAll()
            addDay(d: day1)
        }
//        print(day)
//        print("hereeee")
    }
}
