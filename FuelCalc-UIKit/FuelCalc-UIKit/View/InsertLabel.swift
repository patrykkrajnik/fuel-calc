//
//  InsertLabel.swift
//  FuelCalc-UIKit
//
//  Created by Patryk Krajnik on 05/05/2021.
//

import Foundation
import UIKit

class InsertLabel: UILabel {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        font = UIFont.systemFont(ofSize: 20, weight: .regular)
        textColor = .label
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
