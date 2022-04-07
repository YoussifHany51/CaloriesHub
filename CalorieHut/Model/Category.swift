//
//  Category.swift
//  CalorieHut
//
//  Created by Youssif Hany on 05/04/2022.
//

import Foundation

struct Category: Identifiable{
    
    let id = UUID().uuidString
    var title: String
    var image: String
}
