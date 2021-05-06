//
//  Extensions.swift
//  FuelCalc-UIKit
//
//  Created by Patryk Krajnik on 06/05/2021.
//

import Foundation

extension Float {
    func roundToOnePlace() -> Float {
        var num = self
        let multiplier: Float = 10.0
        let roundedValue = roundf(num * multiplier)
        num = roundedValue / multiplier
        
        return num
    }
}
