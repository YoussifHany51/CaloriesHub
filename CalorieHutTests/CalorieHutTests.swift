//
//  CalorieHutTests.swift
//  CalorieHutTests
//
//  Created by Youssif Hany on 30/04/2022.
//

import XCTest
@testable import Calorie_Hut

class CalorieHutTests: XCTestCase {

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
        sut?.addMeal(name: "Apple", kcal: 15, quantity: 1, unit: "g")
        XCTAssertEqual(sut?.meals.first?.kcal, 15)
        XCTAssertEqual(sut?.meals.first?.quantity, 1)
        XCTAssertEqual(sut?.meals.first?.unit, "g")
    }
}
