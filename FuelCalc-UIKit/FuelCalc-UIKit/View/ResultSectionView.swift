//
//  ResultSectionView.swift
//  FuelCalc-UIKit
//
//  Created by Patryk Krajnik on 07/05/2021.
//

import Foundation
import UIKit

class ResultSectionView: UIView {
    
    var distanceLabel = ResultSectionLabel()
    var fuelConsumptionLabel = ResultSectionLabel()
    var fuelPriceLabel = ResultSectionLabel()
    
    init(distanceTitle: String, fuelConsumption: String, fuelPrice: String) {
        super.init(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
