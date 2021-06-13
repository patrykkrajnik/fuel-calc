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
        Text(K.ResultViewTitles.result)
            .foregroundColor(Color(UIColor.label))
            .font(.system(size: 30))
            .fontWeight(.bold)
            .padding(.top, 30)
            .padding(.bottom, 10)
        Text(String(format: "%.2f", getResult()))
            .foregroundColor(Color(UIColor.label))
            .font(.system(size: 36))
            .fontWeight(.regular)
            .padding(.bottom, 30)
        ZStack {
            Color(.systemGray6)
                .cornerRadius(25.0)
            VStack {
                Text(K.ResultViewTitles.summary)
                    .foregroundColor(Color(UIColor.label))
                    .font(.system(size: 22))
                    .fontWeight(.semibold)
                    .padding(.bottom, 10)
                ResultSectionLabel(
                    title: K.ResultViewTitles.distance,
                    value: String(getDistance()),
                    unit: K.ResultViewTitles.distanceUnit)
                ResultSectionLabel(
                    title: K.ResultViewTitles.averageConsumption,
                    value: String(format: "%.1f", getFuelConsumption()),
                    unit: K.ResultViewTitles.consumptionUnit)
                ResultSectionLabel(
                    title: K.ResultViewTitles.fuelPrice,
                    value: String(format: "%.1f", getFuelPrice()))
            }
            .frame(height: 160)
        }
        .frame(height: 180)
        .padding(.horizontal, 20)
        .onAppear(perform: {
            calculateCost(distance, fuelConsumption, fuelPrice)
        })
    }
    
    func calculateCost(_ distance: String, _ fuelConsumption: Float, _ fuelPrice: Float) {
        let distanceInt = Int(distance)!
        let roundedFuelConsumption = fuelConsumption.roundToOnePlace()
        let roundedFuelPrice = fuelPrice.roundToOnePlace()
        
        let result = (Float(distanceInt)*(roundedFuelConsumption*roundedFuelPrice)) / 100
        calcModel = CalcModel(
            distance: distanceInt,
            fuelConsumption: roundedFuelConsumption,
            fuelPrice: roundedFuelPrice,
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

struct ResultSectionLabel: View {
    
    var title: String
    var value: String
    var unit: String?
    
    var body: some View {
        Text("\(title) - " + "\(value)" + " \(unit ?? "")")
            .foregroundColor(Color(UIColor.label))
            .fontWeight(.regular)
            .font(.system(size: 16))
            .padding(.vertical, 5)
    }
}
