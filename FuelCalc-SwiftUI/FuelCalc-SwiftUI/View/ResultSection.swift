//
//  ResultSection.swift
//  FuelCalc-SwiftUI
//
//  Created by Patryk Krajnik on 12/06/2021.
//

import Foundation
import SwiftUI

struct ResultSection: View {
    
    var distance: String
    var fuelConsumption: Float
    var fuelPrice: Float
    
    @State var calcModel: CalcModel?
    
    var body: some View {
        VStack {
            Text("\(getResult())")
                .padding()
            Text("\(getDistance())")
                .padding()
            Text("\(getFuelConsumption())")
                .padding()
            Text("\(getFuelPrice())")
                .padding()
        }
        .onAppear(perform: {
            calculateCost(distance, fuelConsumption, fuelPrice)
        })
    }
    
    func calculateCost(_ distance: String, _ fuelConsumption: Float, _ fuelPrice: Float) {
        let distanceInt = Int(distance)!
        let result = (Float(distanceInt)*(fuelConsumption*fuelPrice)) / 100
        calcModel = CalcModel(
            distance: distanceInt,
            fuelConsumption: fuelConsumption,
            fuelPrice: fuelPrice,
            result: result)
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
