//
//  ResultView.swift
//  FuelCalc-SwiftUI
//
//  Created by Patryk Krajnik on 12/06/2021.
//

import SwiftUI

struct ResultView: View {
    
    @Binding var isResultPresented: Bool
    
    @Binding var distance: String
    @Binding var fuelConsumption: Float
    @Binding var fuelPrice: Float
    
    var body: some View {
        VStack {
            Text("Result")
                .padding()
            Text("\(distance)")
                .padding()
            Text("\(fuelConsumption)")
                .padding()
            Text("\(fuelPrice)")
                .padding()
            Button(action: {
                self.isResultPresented = false
            }, label: {
                Text("Cancel")
            })
        }
    }
}
