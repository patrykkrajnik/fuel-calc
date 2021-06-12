//
//  Extensions.swift
//  FuelCalc-SwiftUI
//
//  Created by Patryk Krajnik on 12/06/2021.
//

import Foundation

extension Float {
    func roundToOnePlace() -> Float {
        var num = self
        let multiplier: Float = 10.0
        let roundedValue = roundf(num * multiplier)
        num = roundedValue/multiplier
        
        return num
    }
}
