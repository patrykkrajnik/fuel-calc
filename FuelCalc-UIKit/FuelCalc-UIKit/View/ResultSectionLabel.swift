//
//  ResultSectionLabel.swift
//  FuelCalc-UIKit
//
//  Created by Patryk Krajnik on 07/05/2021.
//

import Foundation
import UIKit

class ResultSectionLabel: UILabel {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        translatesAutoresizingMaskIntoConstraints = false
        font = UIFont.systemFont(ofSize: 16, weight: .regular)
        textAlignment = .center
        textColor = .label
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
