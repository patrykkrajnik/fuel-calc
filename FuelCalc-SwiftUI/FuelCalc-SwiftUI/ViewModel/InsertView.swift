//
//  InsertView.swift
//  FuelCalc-SwiftUI
//
//  Created by Patryk Krajnik on 09/06/2021.
//

import SwiftUI

struct InsertView: View {
    
    @State private var distance: String = ""
    @State private var fuelConsumption: Float = 0.0
    @State private var fuelPrice: Float = 0.0
    
    @State private var isPresentingResult = false
    @State private var isDistanceEntered = true
    
    var body: some View {
        ZStack {
            Color(.systemBackground)
            VStack {
                Text(K.appName)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .position(x: 80.0, y: 20.0)
                    .padding()
                    .frame(height: 60)
                InsertSectionTextField(
                    distance: $distance,
                    isDistanceEntered: $isDistanceEntered,
                    title: K.InsertViewTitles.distance)
                InsertSectionSlider(
                    currentValue: $fuelConsumption,
                    title: K.InsertViewTitles.averageConsumption,
                    maximumValue: 40.0)
                InsertSectionSlider(
                    currentValue: $fuelPrice,
                    title: K.InsertViewTitles.fuelPrice,
                    maximumValue: 10.0)
                Spacer()
                Button(action: { [self] in
                    if distance == "" {
                        isDistanceEntered = false
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.7) {
                            isDistanceEntered = true
                        }
                        return
                    }
                    isPresentingResult = true
                }) {
                    ZStack {
                        Color(.systemGray4)
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .frame(height: 60)
                            .cornerRadius(25)
                        Text(K.calculateButton)
                            .font(.system(size: 24))
                            .fontWeight(.regular)
                            .foregroundColor(Color(UIColor.label))
                    }
                }
                .popover(isPresented: $isPresentingResult) { [self] in
                    ResultView(
                        isResultPresented: $isPresentingResult,
                        distance: $distance,
                        fuelConsumption: $fuelConsumption,
                        fuelPrice: $fuelPrice)
                }
                .padding(.horizontal, 45)
                .padding(.bottom, 10)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        InsertView()
    }
}
