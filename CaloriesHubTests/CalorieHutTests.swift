//
//  CaloriesHubTests.swift
//  CaloriesHubTests
//
//  Created by Youssif Hany on 30/04/2022.
//

import XCTest
@testable import Calorie_Hut

class CaloriesHubTests: XCTestCase {

    var sut: MealViewModel?
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        try super.setUpWithError()
        sut = MealViewModel()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        sut = nil
    }

    func testAddMeal(){
        sut?.addMeal(name: "Apple", kcal: 15, quantity: 1, unit: "g", date: Date())
        XCTAssertEqual(sut?.meals.first?.name, "Apple")
        XCTAssertEqual(sut?.meals.first?.kcal, 15)
        XCTAssertEqual(sut?.meals.first?.quantity, 1)
        XCTAssertEqual(sut?.meals.first?.unit, "g")
    }
    
    func testAddKcal(){
        sut?.addKcal(kcal: "10")
        XCTAssertEqual(sut?.userKcal, "10")
    }
    
    func testAddMealToFav(){
        sut?.addMealToFav(name: "Orange", kcal: 10, quantity: 1, unit: "g", date: Date())
        XCTAssertEqual(sut?.favoriteMeals.first?.kcal, 10)
        XCTAssertEqual(sut?.favoriteMeals.first?.quantity, 1)
        XCTAssertEqual(sut?.favoriteMeals.first?.unit, "g")
    }
}
