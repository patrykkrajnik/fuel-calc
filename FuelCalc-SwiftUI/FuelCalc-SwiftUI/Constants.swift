//
//  Constants.swift
//  FuelCalc-SwiftUI
//
//  Created by Patryk Krajnik on 09/06/2021.
//

import Foundation

struct K {
    static let appName = "FuelCalc"
    static let calculateButton = "Calculate"
    static let recalculateButton = "Recalculate"
    
    struct InsertViewTitles {
        static let distance = "Distance (km)"
        static let averageConsumption = "Average Consumption (l/100km)"
        static let fuelPrice = "Price of 1 liter of fuel"
    }
    
    struct ResultViewTitles {
        static let distance = "Distance"
        static let averageConsumption = "Average Consumption"
        static let fuelPrice = "Price of 1 liter of fuel"
        static let result = "Total cost of ride:"
        static let summary = "Summary"
        static let distanceUnit = "km"
        static let consumptionUnit = "l/100km"
    }
}
