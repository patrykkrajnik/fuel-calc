//
//  InsertSectionSlider.swift
//  FuelCalc-SwiftUI
//
//  Created by Patryk Krajnik on 13/06/2021.
//

import SwiftUI

struct InsertSectionSlider: View {
    
    @Binding var currentValue: Float
    @State private var isEditing = false
    
    var title: String
    var maximumValue: Float
    
    var body: some View {
        ZStack {
            Color(.systemGray6)
                .cornerRadius(25.0)
            VStack(alignment: .leading) {
                Text(title)
                    .fontWeight(.regular)
                    .font(.system(size: 20))
                    .padding(.horizontal, 15)
                Text("\(currentValue, specifier: "%.1f")")
                    .fontWeight(.semibold)
                    .font(.system(size: 22))
                    .frame(
                        minWidth: 0,
                        maxWidth: .infinity,
                        alignment: .center)
                    .padding(.vertical, 10)
                Slider(
                    value: $currentValue,
                    in: 0...maximumValue,
                    onEditingChanged: { editing in
                        isEditing = editing
                    }
                )
                .accentColor(.gray)
                .padding(.horizontal, 10)
            }
        }
        .frame(height: 150)
        .padding(.horizontal, 20)
        .padding(.vertical, 10)
    }
}
