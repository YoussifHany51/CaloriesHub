//
//  MealViewModel.swift
//  CalorieHut
//
//  Created by Youssif Hany on 05/04/2022.
//

import Foundation

class MealViewModel: ObservableObject{
    
    
    // MARK: Beef list
    
    @Published var beefList:[Meal]=[
        Meal(name: "Beef", kcal: 171, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Beef Brisket", kcal: 137, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Beef Fillet", kcal: 189, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Beef Goulash", kcal: 123, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Beef Neck", kcal: 213, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Beef Patty", kcal: 247, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Beef Prime Rib", kcal: 404, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Beef Ribs", kcal: 196, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Beef Sirloin", kcal: 182, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Beef Tallow", kcal: 902, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Beef Thymus", kcal: 319, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Beef Tripe", kcal: 94, quantity: 100, unit: "g", isFav: false),
        Meal(name: "BBQ Ribs", kcal: 255, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Minced Veal", kcal: 143, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Rib Eye Steak", kcal: 217, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Roast Beef", kcal: 187, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Rump Steak", kcal: 171, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Strip Steak", kcal: 117, quantity: 100, unit: "g", isFav: false),
        Meal(name: "T-Bone-Steak", kcal: 221, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Veal", kcal: 282, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Veal Breast", kcal: 282, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Veal Leg", kcal: 211, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Veal Roast Beef", kcal: 175, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Veal Shoulder", kcal: 183, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Baked Ham", kcal: 343, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Beef Salami", kcal: 375, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Boiled Ham", kcal: 126, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Chicken Breast Fillet", kcal: 183, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Dutch Loaf", kcal: 268, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Ham", kcal: 145, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Ham Sausage", kcal: 164, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Liverwurst", kcal: 326, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Pastrami", kcal: 133, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Pepperoni", kcal: 183, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Roast Beef", kcal: 183, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Salami", kcal: 336, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Smoked Ham", kcal: 107, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Smoked Turkey Breast", kcal: 104, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Summer Sausage", kcal: 298, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Turkey Breast", kcal: 104, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Turkey Ham", kcal: 126, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Turkey Salami", kcal: 152, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Bacon and Eggs", kcal: 252, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Baked Chicken", kcal: 164, quantity: 100, unit: "g", isFav: false),
        Meal(name: "California Roll", kcal: 93, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Chicken Caesar Salad", kcal: 127, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Chicken Fried Steak", kcal: 151, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Chicken Marsala", kcal: 96, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Kebab", kcal: 215, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Lasagne", kcal: 132, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Meat Pie", kcal: 242, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Mac and Cheese", kcal: 370, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Macaroni and Cheese", kcal: 370, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Mashed Potatoes", kcal: 83, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Sausage Roll", kcal: 350, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Spring Roll", kcal: 250, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Tandoori Chicken", kcal: 113, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Chicken Breast", kcal: 172, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Chicken Drumstick", kcal: 185, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Chicken Liver", kcal: 167, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Chicken Wing", kcal: 266, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Duck", kcal: 337, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Turkey", kcal: 189, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Turkey Breast", kcal: 135, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Turkey Steak", kcal: 189, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Turkey Wings", kcal: 221, quantity: 100, unit: "g", isFav: false),
            ]
   
    // MARK: Fast Food list
    @Published var fastFoodList : [Meal]=[
        Meal(name: "Burger King Angry Whopper", kcal: 740, quantity: 290, unit: "g", isFav: false),
        Meal(name: "Burger King Double Whopper", kcal: 894, quantity: 374, unit: "g", isFav: false),
        Meal(name: "Burger King Double Whopper with Cheese", kcal: 994, quantity: 399, unit: "g", isFav: false),
        Meal(name: "Burger King Original Chicken Sandwich", kcal: 659, quantity: 219, unit: "g", isFav: false),
        Meal(name: "Cheeseburger", kcal: 410, quantity: 156, unit: "g", isFav: false),
        Meal(name: "Chicken Breast", kcal: 163, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Chicken Fajita", kcal: 147, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Chicken Wings", kcal: 324, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Curly Fries", kcal: 311, quantity: 100, unit: "g", isFav: false),
        Meal(name: "French Fries", kcal: 312, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Hot Dog", kcal: 269, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Lasagna", kcal: 132, quantity: 100, unit: "g", isFav: false),
        Meal(name: "McDonald’s Big Mac", kcal: 561, quantity: 219, unit: "g", isFav: false),
        Meal(name: "McDonald’s Cheeseburger", kcal: 300, quantity: 114, unit: "g", isFav: false),
        Meal(name: "McDonald’s Double Cheeseburger", kcal: 437, quantity: 155, unit: "g", isFav: false),
        Meal(name: "McDonald’s McChicken", kcal: 359, quantity: 143, unit: "g", isFav: false),
        Meal(name: "Meatball Sandwich", kcal: 481, quantity: 299, unit: "g", isFav: false),
        Meal(name: "Zinger", kcal: 517, quantity: 202, unit: "g", isFav: false),
        Meal(name: "Smoked Salmon", kcal: 158, quantity: 100, unit: "g", isFav: false),
        Meal(name: "BBQ Chicken Pizza", kcal: 234, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Beef Pizza", kcal: 304, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Buffalo Chicken Pizza", kcal: 252, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Calzone", kcal: 231, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Cheese Pizza", kcal: 267, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Chicken Pizza", kcal: 234, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Dominos Philly Cheese Steak Pizza", kcal: 224, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Grilled Pizza", kcal: 226, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Hawaiian Pizza", kcal: 115, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Margherita Pizza", kcal: 275, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Mozzarella Pizza", kcal: 249, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Mushroom Pizza", kcal: 212, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Pepperoni Pizza", kcal: 255, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Pizza Hut Stuffed Crust Pizza", kcal: 255, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Pizza Hut Supreme Pizza", kcal: 248, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Salami Pizza", kcal: 255, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Seafood Pizza", kcal: 245, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Shrimp Pizza", kcal: 209, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Thin Crust Pizza", kcal: 261, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Tuna Pizza", kcal: 254, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Vegetable Pizza", kcal: 256, quantity: 100, unit: "g", isFav: false),
    ]
    
    @Published var seaFoodList: [Meal] = [
        Meal(name: "Anchovy", kcal: 131, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Bluefish", kcal: 159, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Butterfish", kcal: 187, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Calamari", kcal: 175, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Carp", kcal: 162, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Caviar", kcal: 264, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Clam", kcal: 148, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Cod", kcal: 105, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Crawfish", kcal: 82, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Crayfish", kcal: 87, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Fish Sticks", kcal: 290, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Grouper", kcal: 118, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Haddock", kcal: 90, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Hake", kcal: 71, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Herring", kcal: 203, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Hoki", kcal: 121, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Ling", kcal: 109, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Mackerel", kcal: 262, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Mullet", kcal: 150, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Mussel", kcal: 172, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Pickled Herring", kcal: 262, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Pollack", kcal: 111, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Red Snapper", kcal: 128, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Redfish", kcal: 94, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Rollmops", kcal: 171, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Salmon", kcal: 206, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Sardines", kcal: 208, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Scallops", kcal: 111, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Smelt", kcal: 124, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Squid", kcal: 92, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Sturgeon", kcal: 135, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Sushi", kcal: 150, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Shrimp", kcal: 99, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Freid Shrimp", kcal: 277, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Triggerfish", kcal: 93, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Trout", kcal: 190, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Tuna", kcal: 132, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Tuna Salad", kcal: 187, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Whitefish", kcal: 172, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Whiting", kcal: 116, quantity: 100, unit: "g", isFav: false),
        Meal(name: "Zander", kcal: 84, quantity: 100, unit: "g", isFav: false),
    ]
    // MARK: Hot drinks list
    @Published var hotDrinksList: [Meal] = [
        Meal(name: "Chai Tea", kcal: 0, quantity: 100, unit: "ml", isFav: false),
        Meal(name: "Chocolate Milk", kcal: 89, quantity: 100, unit: "ml", isFav: false),
        Meal(name: "Coffee", kcal: 1, quantity: 100, unit: "ml", isFav: false),
        Meal(name: "Ginger Tea", kcal: 0, quantity: 100, unit: "ml", isFav: false),
        Meal(name: "Cappuccino", kcal: 165, quantity: 100, unit: "ml", isFav: false),
        Meal(name: "Hot Chocolate", kcal: 89, quantity: 100, unit: "ml", isFav: false),
        Meal(name: "Latte Macchiato", kcal: 57, quantity: 100, unit: "ml", isFav: false),
        Meal(name: "Flat White", kcal: 179, quantity: 100, unit: "ml", isFav: false),
    ]
    
    // MARK: Cold Drinks list
    @Published var coldDrinksList: [Meal]=[
    Meal(name: "Acai Juice", kcal: 58, quantity: 100, unit: "ml", isFav: false),
    Meal(name: "Aloe Vera", kcal: 44, quantity: 100, unit: "ml", isFav: false),
    Meal(name: "Apple Juice", kcal: 46, quantity: 100, unit: "ml", isFav: false),
    Meal(name: "Apricot Nectar", kcal: 56, quantity: 100, unit: "ml", isFav: false),
    Meal(name: "Banana Juice", kcal: 50, quantity: 100, unit: "ml", isFav: false),
    Meal(name: "Blackberry Juice", kcal: 48, quantity: 100, unit: "ml", isFav: false),
    Meal(name: "Boysenberry Juice", kcal: 54, quantity: 100, unit: "ml", isFav: false),
    Meal(name: "Capri-Sun", kcal: 41, quantity: 100, unit: "ml", isFav: false),
    Meal(name: "Carrot Juice", kcal: 58, quantity: 100, unit: "ml", isFav: false),
    Meal(name: "Cherry Juice", kcal: 45, quantity: 100, unit: "ml", isFav: false),
    Meal(name: "Coconut Milk", kcal: 233, quantity: 100, unit: "ml", isFav: false),
    Meal(name: "Coconut Water", kcal: 19, quantity: 100, unit: "ml", isFav: false),
    Meal(name: "Concord Grape", kcal: 71, quantity: 100, unit: "ml", isFav: false),
    Meal(name: "Cucumber Juice", kcal: 10, quantity: 100, unit: "ml", isFav: false),
    Meal(name: "Energy-Drink", kcal: 87, quantity: 100, unit: "ml", isFav: false),
    Meal(name: "Grape Juice", kcal: 60, quantity: 100, unit: "ml", isFav: false),
    Meal(name: "Grapefruit Juice", kcal: 46, quantity: 100, unit: "ml", isFav: false),
    Meal(name: "Lemon Juice", kcal: 19, quantity: 100, unit: "ml", isFav: false),
    Meal(name: "Orange Juice", kcal: 46, quantity: 100, unit: "ml", isFav: false),
    Meal(name: "Passion Fruit Juice", kcal: 48, quantity: 100, unit: "ml", isFav: false),
    Meal(name: "Peach Juice", kcal: 54, quantity: 100, unit: "ml", isFav: false),
    Meal(name: "Pineapple Juice", kcal: 53, quantity: 100, unit: "ml", isFav: false),
    Meal(name: "Plum Juice", kcal: 71, quantity: 100, unit: "ml", isFav: false),
    Meal(name: "Tangerine Juice", kcal: 43, quantity: 100, unit: "ml", isFav: false),
    Meal(name: "Tomato Juice", kcal: 17, quantity: 100, unit: "ml", isFav: false),
    Meal(name: "Vegetable Juice", kcal: 21, quantity: 100, unit: "ml", isFav: false),
    Meal(name: "White Grape Juice", kcal: 75, quantity: 100, unit: "ml", isFav: false),
    Meal(name: "7up", kcal: 44, quantity: 100, unit: "ml", isFav: false),
    Meal(name: "Coke", kcal: 42, quantity: 100, unit: "ml", isFav: false),
    Meal(name: "Coke Zero", kcal: 0, quantity: 100, unit: "ml", isFav: false),
    Meal(name: "Diet Dr. Pepper", kcal: 0, quantity: 100, unit: "ml", isFav: false),
    Meal(name: "Diet Pepsi", kcal: 0, quantity: 100, unit: "ml", isFav: false),
    Meal(name: "Dr. Pepper", kcal: 27, quantity: 100, unit: "ml", isFav: false),
    Meal(name: "Fanta", kcal: 39, quantity: 100, unit: "ml", isFav: false),
    Meal(name: "Ice Tea", kcal: 27, quantity: 100, unit: "ml", isFav: false),
    Meal(name: "Orange Soda", kcal: 48, quantity: 100, unit: "ml", isFav: false),
    Meal(name: "Pepsi", kcal: 44, quantity: 100, unit: "ml", isFav: false),
    Meal(name: "Sprite", kcal: 37, quantity: 100, unit: "ml", isFav: false),
    Meal(name: "Sprite Zero", kcal: 0, quantity: 100, unit: "ml", isFav: false),
    Meal(name: "Tonic Water", kcal: 35, quantity: 100, unit: "ml", isFav: false),
    Meal(name: "Vanilla Coke", kcal: 37, quantity: 100, unit: "ml", isFav: false),
    Meal(name: "Chocolate Milkshake", kcal: 125, quantity: 100, unit: "ml", isFav: false),
    Meal(name: "Milkshake (dry)", kcal: 329, quantity: 100, unit: "ml", isFav: false),
    Meal(name: "Smoothie", kcal: 37, quantity: 100, unit: "ml", isFav: false),
    Meal(name: "Strawberry Milkshake", kcal: 113, quantity: 100, unit: "ml", isFav: false),
    Meal(name: "Vanilla Milkshake", kcal: 149, quantity: 100, unit: "ml", isFav: false),
    ]
    // MARK: Fruit list
    @Published var fruitList: [Meal]=[
    Meal(name: "Apple", kcal: 52, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Acai", kcal: 70, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Applesauce", kcal: 68, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Avocado", kcal: 160, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Banana", kcal: 89, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Blackberries", kcal: 43, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Blueberries", kcal: 57, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Cantaloupe", kcal: 34, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Cherries", kcal: 50, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Clementine", kcal: 47, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Dates", kcal: 282, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Fruit salad", kcal: 50, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Grapes", kcal: 69, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Guava", kcal: 68, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Jackfruit", kcal: 95, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Kiwi", kcal: 61, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Lime", kcal: 30, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Mango", kcal: 60, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Orange", kcal: 47, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Passion Fruit", kcal: 97, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Peach", kcal: 39, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Pear", kcal: 57, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Pineapple", kcal: 50, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Pomegranate", kcal: 83, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Raspberries", kcal: 52, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Strawberries", kcal: 32, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Tangerine", kcal: 53, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Watermelon", kcal: 30, quantity: 100, unit: "g", isFav: false),
    ]
    // MARK: Vegetable list
    @Published var vegetablesList: [Meal]=[
    Meal(name: "Arugula", kcal: 25, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Aubergine", kcal: 25, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Asparagus", kcal: 20, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Bell Pepper", kcal: 20, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Black Olives", kcal: 115, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Broccoli", kcal: 34, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Brussels Sprouts", kcal: 43, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Capsicum", kcal: 27, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Cabbage", kcal: 25, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Carrot", kcal: 41, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Chard", kcal: 19, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Cherry Tomato", kcal: 100, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Chicory", kcal: 72, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Chinese Cabbage", kcal: 16, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Chives", kcal: 30, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Corn", kcal: 365, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Cucumber", kcal: 16, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Eggplant", kcal: 10, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Fennel", kcal: 31, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Garlic", kcal: 149, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Gherkin", kcal: 14, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Green Beans", kcal: 31, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Green Olives", kcal: 115, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Green Onion", kcal: 32, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Kohlrabi", kcal: 27, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Lettuce", kcal: 15, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Mushrooms", kcal: 22, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Mashed Potatoes", kcal: 83, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Mustard Greens", kcal: 27, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Okra", kcal: 33, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Olives", kcal: 115, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Onion", kcal: 40, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Peas", kcal: 81, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Pepper", kcal: 27, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Potato", kcal: 77, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Pumpkin", kcal: 26, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Red Cabbage", kcal: 31, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Sweet Potato", kcal: 86, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Tomato", kcal: 18, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Wasabi", kcal: 109, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Zucchini", kcal: 17, quantity: 100, unit: "g", isFav: false),
    ]
    // MARK: Nuts list
    @Published var nutsList:[Meal]=[
    Meal(name: "Acorn", kcal: 387, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Almonds", kcal: 23, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Beechnut", kcal: 576, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Brazil Nuts", kcal: 656, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Butternut", kcal: 612, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Chestnut", kcal: 213, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Coconut", kcal: 354, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Ginkgo Nuts", kcal: 182, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Goa Bean", kcal: 409, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Hazelnut", kcal: 628, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Hickory Nuts", kcal: 657, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Lima Beans", kcal: 71, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Macadamia Nuts", kcal: 718, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Peanuts", kcal: 567, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Peas", kcal: 81, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Pecan Nuts", kcal: 691, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Pistachios", kcal: 562, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Sweet Chestnut", kcal: 194, quantity: 100, unit: "g", isFav: false),
    ]
    
    // MARK: Pasta list
    @Published var pastaList:[Meal]=[
    Meal(name: "Cannelloni", kcal: 146, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Capellini", kcal: 353, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Cappelletti", kcal: 164, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Cellophane Noodles", kcal: 351, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Cheese Tortellini", kcal: 291, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Dampfnudel", kcal: 274, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Egg Noodles", kcal: 384, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Fettuccine", kcal: 353, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Fusilli", kcal: 352, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Glass Noodles", kcal: 192, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Lasagne Sheets", kcal: 271, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Linguine", kcal: 357, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Macaroni", kcal: 370, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Manicotti", kcal: 357, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Mostaccioli", kcal: 184, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Orecchiette", kcal: 370, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Orzo", kcal: 357, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Ravioli", kcal: 77, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Rigatoni", kcal: 353, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Rotini", kcal: 353, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Soy Noodles", kcal: 216, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Shirataki Noodles", kcal: 18, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Spaghetti", kcal: 370, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Spinach Tortellini", kcal: 314, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Tortellini", kcal: 291, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Vermicelli", kcal: 368, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Whole Grain Noodles", kcal: 347, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Whole Grain Spaghetti", kcal: 351, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Ziti", kcal: 352, quantity: 100, unit: "g", isFav: false),
    ]
    
    // MARK: Dairy list
    @Published var dairyList:[Meal]=[
    Meal(name: "Almond Milk", kcal: 17, quantity: 100, unit: "ml", isFav: false),
    Meal(name: "Buttermilk", kcal: 62, quantity: 100, unit: "ml", isFav: false),
    Meal(name: "Chocolate Mousse", kcal: 225, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Coconut Milk", kcal: 230, quantity: 100, unit: "ml", isFav: false),
    Meal(name: "Coffee Creamer", kcal: 195, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Condensed Milk", kcal: 321, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Cottage Cheese", kcal: 98, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Cheddar", kcal: 403, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Edam Cheese", kcal: 357, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Fresh Mozzarella", kcal: 280, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Gouda Cheese", kcal: 356, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Cream", kcal: 242, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Creme Fraiche", kcal: 393, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Curd", kcal: 98, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Custard", kcal: 122, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Evaporated Milk", kcal: 135, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Goat Milk", kcal: 69, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Hot Chocolate", kcal: 89, quantity: 100, unit: "ml", isFav: false),
    Meal(name: "Kefir", kcal: 55, quantity: 100, unit: "ml", isFav: false),
    Meal(name: "Lactose-free Milk", kcal: 52, quantity: 100, unit: "ml", isFav: false),
    Meal(name: "Lassi", kcal: 75, quantity: 100, unit: "ml", isFav: false),
    Meal(name: "Milk", kcal: 61, quantity: 100, unit: "ml", isFav: false),
    Meal(name: "Plain Yogurt", kcal: 61, quantity: 100, unit: "ml", isFav: false),
    Meal(name: "Powdered Milk", kcal: 496, quantity: 100, unit: "ml", isFav: false),
    Meal(name: "Rice Milk", kcal: 49, quantity: 100, unit: "ml", isFav: false),
    Meal(name: "Rice Pudding", kcal: 118, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Semi-skimmed Milk", kcal: 50, quantity: 100, unit: "ml", isFav: false),
    Meal(name: "Semolina Pudding", kcal: 67, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Skim Milk", kcal: 35, quantity: 100, unit: "ml", isFav: false),
    Meal(name: "Sour Cream", kcal: 181, quantity: 100, unit: "ml", isFav: false),
    Meal(name: "Sweetened Condensed Milk", kcal: 321, quantity: 100, unit: "ml", isFav: false),
    Meal(name: "Whipped Cream", kcal: 257, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Whole Milk", kcal: 61, quantity: 100, unit: "ml", isFav: false),
    Meal(name: "Yogurt", kcal: 61, quantity: 100, unit: "g", isFav: false),
    ]
    
    // MARK: Dessert list
    @Published var dessertList:[Meal]=[
    Meal(name: "Apple Cake", kcal: 252, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Apple Pie", kcal: 237, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Baked Alaska", kcal: 247, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Banoffee Pie", kcal: 395, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Birthday Cake", kcal: 465, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Black and White Cookie", kcal: 381, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Black Forest Cake", kcal: 264, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Blueberry Muffin", kcal: 377, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Blueberry Pie", kcal: 232, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Buttermilk Pie", kcal: 380, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Caramel Cake", kcal: 475, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Carrot Cake", kcal: 408, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Cheesecake", kcal: 321, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Cherry Pie", kcal: 260, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Chocolate Cake", kcal: 389, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Chocolate Cream Pie", kcal: 304, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Chocolate Muffin", kcal: 420, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Coconut Cake", kcal: 356, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Coffee Cake", kcal: 331, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Cupcake", kcal: 305, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Donut", kcal: 403, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Fruit Cake", kcal: 324, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Ice Cream Cake", kcal: 200, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Lemon Cake", kcal: 352, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Pancake", kcal: 227, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Peach Pie", kcal: 223, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Raspberry Pie", kcal: 240, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Strawberry Cheesecake", kcal: 327, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Strawberry Pie", kcal: 230, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Sweet Potato Pie", kcal: 260, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Swiss Roll", kcal: 439, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Trifle", kcal: 180, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Butterfinger", kcal: 450, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Buttermilk Pancakes", kcal: 238, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Candy Apple", kcal: 152, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Candy canes", kcal: 423, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Caramel Popcorn", kcal: 376, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Chocolate Bar", kcal: 533, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Cookies", kcal: 488, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Cotton Candy", kcal: 643, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Fairy Cakes", kcal: 440, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Jelly Beans", kcal: 354, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Kit Kat", kcal: 521, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Lollipop", kcal: 392, quantity: 100, unit: "g", isFav: false),
    Meal(name: "M&M’s", kcal: 479, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Maltesers", kcal: 498, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Mars Bar", kcal: 448, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Marshmallows", kcal: 318, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Milky Way", kcal: 449, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Peanut Bar", kcal: 533, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Peanut Brittle", kcal: 183, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Peanut Butter Cookies", kcal: 475, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Popcorn", kcal: 582, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Snickers", kcal: 484, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Twix", kcal: 495, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Baskin-Robbins", kcal: 239, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Chocolate Ice Cream", kcal: 216, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Ice Cream Sandwich", kcal: 237, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Strawberry Ice Cream", kcal: 236, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Vanilla Cone", kcal: 162, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Vanilla Ice Cream", kcal: 201, quantity: 100, unit: "g", isFav: false),
    ]
    // MARK: Pastries list
    @Published var pastriesList:[Meal]=[
    Meal(name: "Banana Bread", kcal: 326, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Banana Nut Bread", kcal: 326, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Black Bread", kcal: 250, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Bread Pudding", kcal: 153, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Bran Muffins", kcal: 270, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Brown Bread", kcal: 246, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Brownies", kcal: 405, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Bun", kcal: 316, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Cinnamon Bun", kcal: 436, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Cornbread", kcal: 179, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Crepes", kcal: 224, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Croissant", kcal: 406, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Cupcakes", kcal: 305, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Donut/Doughnut", kcal: 421, quantity: 100, unit: "g", isFav: false),
    Meal(name: "English Muffin", kcal: 227, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Garlic Bread", kcal: 350, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Hot Dog Buns", kcal: 279, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Italian Bread", kcal: 271, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Muffin", kcal: 296, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Potato Bread", kcal: 266, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Roll", kcal: 316, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Sandwich Bread", kcal: 251, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Swiss Roll", kcal: 313, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Toast", kcal: 261, quantity: 100, unit: "g", isFav: false),
    Meal(name: "Tortilla", kcal: 297, quantity: 100, unit: "g", isFav: false),
    Meal(name: "White Bread", kcal: 238, quantity: 100, unit: "g", isFav: false),
    ]
    
    //MARK: CategoryList
    @Published var categorylist: [Category] = [
        Category(title: "Fruit", image: "Fruit"), //
        Category(title: "Beef & Chicken", image: "Beef"), //
        Category(title: "Fast Food", image: "fastFood"), //
        Category(title: "Vegetable", image: "Vegtable"), //
        Category(title: "Pasta", image: "Pasta"), //
        Category(title: "Dessert", image: "Dessert"), //
        Category(title: "Hot Drinks", image: "HotDrink"), //
        Category(title: "Cold Drinks", image: "ColdDrink"), //
        Category(title: "Dairy", image: "Dairy"), //
        Category(title: "Pastries", image: "Pastries"), //
        Category(title: "Nuts", image: "Nuts"), //
        Category(title: "SeaFood", image: "SeaFood"), //
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
   
    
    @Published var showMealsEatenList: Bool = false
    @Published var showMealSheet:Bool = false
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
