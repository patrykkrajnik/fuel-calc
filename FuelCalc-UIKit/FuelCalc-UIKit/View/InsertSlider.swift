//
//  InsertSlider.swift
//  FuelCalc-UIKit
//
//  Created by Patryk Krajnik on 05/05/2021.
//

import Foundation
import UIKit

class InsertSlider: UISlider {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        translatesAutoresizingMaskIntoConstraints = false
        thumbTintColor = .systemGray
        minimumTrackTintColor = .systemGray3
        maximumTrackTintColor = .systemGray5
        minimumValue = 0.0
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
