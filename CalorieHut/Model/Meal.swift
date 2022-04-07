//
//  Meal.swift
//  CalorieHut
//
//  Created by Youssif Hany on 05/04/2022.
//

import Foundation

struct Meal:Identifiable,Codable{
    
    let id:String
    let name:String
    var kcal:Float
    var quantity:Int
    var isFav:Bool

    init(id:String = UUID().uuidString,name:String,kcal:Float,quantity:Int,isFav:Bool){
        self.id=id
        self.name=name
        self.kcal=kcal
        self.quantity=quantity
        self.isFav=isFav
    }
    
    func updateComplete()->Meal{
        return Meal(id: id, name: name, kcal: kcal, quantity: quantity,isFav: isFav)
    }
}
