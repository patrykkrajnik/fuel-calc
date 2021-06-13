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
            ResultSection(distance: distance,
                        fuelConsumption: fuelConsumption,
                        fuelPrice: fuelPrice)
            Spacer()
            Button(action: {
                self.isResultPresented = false
            }) {
                ZStack {
                    Color(.systemGray4)
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .frame(height: 60)
                        .cornerRadius(25)
                    Text(K.recalculateButton)
                        .font(.system(size: 24))
                        .fontWeight(.regular)
                        .foregroundColor(Color(UIColor.label))
                }
            }
            .padding(.horizontal, 45)
            .padding(.vertical, 10)
        }
    }
}
