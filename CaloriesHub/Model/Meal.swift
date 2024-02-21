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
    let quantity:Int
    let unit:String
    var isFav:Bool
    var date:Date

    init(id:String = UUID().uuidString,name:String,kcal:Float,quantity:Int,unit:String,isFav:Bool,date:Date){
        self.id=id
        self.name=name
        self.kcal=kcal
        self.quantity=quantity
        self.unit=unit
        self.isFav=isFav
        self.date = date
    }
    
    func updateComplete()->Meal{
        return Meal(id: id, name: name, kcal: kcal, quantity: quantity,unit: unit,isFav: !isFav, date: date)
    }
}
