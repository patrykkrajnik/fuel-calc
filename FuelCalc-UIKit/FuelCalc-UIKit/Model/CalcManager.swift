//
//  CalcManager.swift
//  FuelCalc-UIKit
//
//  Created by Patryk Krajnik on 04/05/2021.
//

import Foundation

protocol CalcManagerDelegate {
    func didCalculateSuccessfully()
    func didFailCalculating()
}

struct CalcManager {
    
    var delegate: CalcManagerDelegate?
    
}
