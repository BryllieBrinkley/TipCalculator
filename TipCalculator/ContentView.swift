//
//  ContentView.swift
//  TipCalculator
//
//  Created by Jibryll Brinkley on 3/25/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var enteredAmount: String = ""
    @State private var tipAmount: Double = 0
    @State private var totalAmount: Double = 0
    @State private var tipSlider: Double = 15

    var body: some View {
        VStack(spacing: 40) {
            Text("Enter Bill Amount")
                .foregroundStyle(.secondary)
            
            TextField("0.00", text: $enteredAmount)
                .font(.system(size: 70, weight: .semibold, design: .rounded))
                .keyboardType(.decimalPad)
                .multilineTextAlignment(.center)
        }
        
        Text("Tip \(tipSlider, specifier: "%.0f")%")
        
        Slider(value: $tipSlider, in: 0...100, step: 1)
    
    }
    
}

#Preview {
    ContentView()
}
