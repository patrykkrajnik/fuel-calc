//
//  Constants.swift
//  FuelCalc-UIKit
//
//  Created by Patryk Krajnik on 04/05/2021.
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
    
    struct InsertViewPlaceholders {
        static let distance = "eg. 250"
    }
    
    struct ResultViewTitles {
        static let distance = "Distance:"
        static let averageConsumption = "Average Consumption:"
        static let fuelPrice = "Price of 1 liter of fuel:"
        static let result = "Total cost of ride:"
    }
}
