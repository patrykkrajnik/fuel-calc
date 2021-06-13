//
//  InsertSectionTextField.swift
//  FuelCalc-SwiftUI
//
//  Created by Patryk Krajnik on 13/06/2021.
//

import SwiftUI

struct InsertSectionTextField: View {
    
    @Binding var distance: String
    @Binding var isDistanceEntered: Bool
    @State private var isEditing = false
    
    var title: String
    
    var body: some View {
        ZStack {
            Color(isDistanceEntered ? .systemGray6 : .systemRed)
                .cornerRadius(25.0)
            VStack(alignment: .leading) {
                Text(title)
                    .fontWeight(.regular)
                    .font(.system(size: 20))
                    .padding(.horizontal, 15)
                TextField(
                    "",
                    text: $distance
                ) { isEditing in
                    self.isEditing = isEditing
                }
                .keyboardType(.numberPad)
                .frame(height: 40)
                .background(Color.white)
                .padding(.horizontal, 10)
            }
        }
        .frame(height: 140)
        .padding(.horizontal, 20)
        .padding(.vertical, 10)
        .onAppear(perform: {
            UIApplication.shared.addTapGestureRecognizer()
        })
    }
}
