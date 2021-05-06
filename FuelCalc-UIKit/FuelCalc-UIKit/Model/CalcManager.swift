//
//  CalcManager.swift
//  FuelCalc-UIKit
//
//  Created by Patryk Krajnik on 04/05/2021.
//

import Foundation

protocol CalcManagerDelegate {
    func didCalculateSuccessfully(_ calculatorManager: CalcManager)
    func didFailCalculating()
}

struct CalcManager {
    
    var calcModel: CalcModel?
    var delegate: CalcManagerDelegate?
    
    mutating func calculateCost(_ unwrappedDistance: Int?, _ fuelConsumption: Float, _ fuelPrice: Float) {
        if let distance = unwrappedDistance {
            let result = (Float(distance)*(fuelConsumption*fuelPrice)) / 100
            calcModel = CalcModel(distance: distance, fuelConsumption: fuelConsumption, fuelPrice: fuelPrice, result: result)
            delegate?.didCalculateSuccessfully(self)
        } else {
            delegate?.didFailCalculating()
        }
    }
    
    func getDistance() -> Int {
        return calcModel?.distance ?? 0
    }
    
    func getFuelConsumption() -> Float {
        return calcModel?.fuelConsumption ?? 0.0
    }
    
    func getFuelPrice() -> Float {
        return calcModel?.fuelPrice ?? 0.0
    }
    
    func getResult() -> Float {
        return calcModel?.result ?? 0.0
    }
}
