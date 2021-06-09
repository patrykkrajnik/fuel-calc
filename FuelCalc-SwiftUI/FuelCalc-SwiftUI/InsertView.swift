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
                Button(action: {
                    self.showResults = true
                }) {
                    ZStack {
                        Color(.systemGray4)
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .frame(height: 60)
                            .cornerRadius(25)
                            .padding(.horizontal, 30)
                        Text(K.calculateButton)
                            .font(.title)
                            .fontWeight(.regular)
                            .foregroundColor(Color.black)
                    }
                    .padding(20)
                }
                .popover(isPresented: $showResults) {
                    ResultView()
                }
            }
        }
    }
}

struct ResultView: View {
    var body: some View {
        Text("Result")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        InsertView()
    }
}
