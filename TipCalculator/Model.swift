//
//  TipModel.swift
//  TipCalculator
//
//  Created by Jibryll Brinkley on 3/25/25.
//

import Foundation

struct Calculation {
    
    func calculateTip(of enteredAmount: Double, with tip: Double) -> Double? {
        guard enteredAmount >= 0 && tip >= 0 else {return nil}
        let tipPercentage = tip / 100
        return enteredAmount * tipPercentage
    }
}
