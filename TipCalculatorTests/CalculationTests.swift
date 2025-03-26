//
//  CalculationTests.swift
//  TipCalculatorTests
//
//  Created by Jibryll Brinkley on 3/25/25.
//

import XCTest
@testable import TipCalculator

final class CalculationTests: XCTestCase {
    
    func testSuccessfulTipCalculation() {
       // Arrange
        let enteredAmount = 100.00
        let tipSlider = 25.0
        let calculation = Calculation()
        
        // Act
        let tip = calculation.calculateTip(of: enteredAmount,
                                             with: tipSlider)
        
        // Assert
        XCTAssertEqual(tip, 25)
    }
    
    func testNegativeEnteredAmountTipCalculation() {
       // Arrange
        let enteredAmount = -100.00
        let tipSlider = 25.0
        let calculation = Calculation()
        
        // Act
        let tip = calculation.calculateTip(of: enteredAmount,
                                             with: tipSlider)
        
        // Assert
        XCTAssertNil(tip)
    }
    
    

}
