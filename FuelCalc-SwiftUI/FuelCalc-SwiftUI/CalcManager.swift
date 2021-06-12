//
//  CalcManager.swift
//  FuelCalc-SwiftUI
//
//  Created by Patryk Krajnik on 12/06/2021.
//

import Foundation
import SwiftUI

struct CalcManager {
    
    @Binding var calcModel: CalcModel?
    
    func calculateCost() {
        if let safeCalcModel = calcModel {
            let result = (Float(safeCalcModel.distance)*(safeCalcModel.fuelConsumption*safeCalcModel.fuelPrice)) / 100
            calcModel = CalcModel(
                distance: safeCalcModel.distance,
                fuelConsumption: safeCalcModel.fuelConsumption,
                fuelPrice: safeCalcModel.fuelPrice,
                result: result)
        }
    }
    
}
