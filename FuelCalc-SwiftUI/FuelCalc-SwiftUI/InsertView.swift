//
//  ContentView.swift
//  FuelCalc-SwiftUI
//
//  Created by Patryk Krajnik on 09/06/2021.
//

import SwiftUI

struct InsertView: View {
    
    @State private var showResults = false
    
    var body: some View {
        ZStack {
            Color(.systemBackground)
            VStack {
                Text(K.appName)
                    .font(.largeTitle)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .position(x: 80.0, y: 20.0)
                    .padding()
                    .frame(height: 60)
                InsertSectionTextField(
                    title: K.InsertViewTitles.distance)
                InsertSectionSlider(
                    title: K.InsertViewTitles.averageConsumption,
                    maximumValue: 40.0)
                InsertSectionSlider(
                    title: K.InsertViewTitles.fuelPrice,
                    maximumValue: 10.0)
                Spacer()
                Button(action: {
                    self.showResults = true
                }) {
                    ZStack {
                        Color(.systemGray4)
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .frame(height: 60)
                            .cornerRadius(25)
                        Text(K.calculateButton)
                            .font(.system(size: 24))
                            .fontWeight(.regular)
                            .foregroundColor(Color.black)
                    }
                }
                .popover(isPresented: $showResults) {
                    ResultView()
                }
                .padding(.horizontal, 45)
                .padding(.bottom, 10)
            }
        }
    }
}

struct InsertSectionTextField: View {
    
    @State private var username: String = ""
    @State private var isEditing = false
    
    var title: String
    
    var body: some View {
        ZStack {
            Color(.systemGray6)
                .cornerRadius(25.0)
            VStack(alignment: .leading) {
                Text(title)
                    .fontWeight(.regular)
                    .font(.system(size: 20))
                    .padding(.horizontal, 15)
                TextField(
                    "",
                    text: $username
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
    }
}

struct InsertSectionSlider: View {
    
    @State private var currentValue: Float = 0.0
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
                Text("\(currentValue.roundToOnePlace(), specifier: "%.1f")")
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        InsertView()
    }
}
