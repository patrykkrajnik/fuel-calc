//
//  InsertTextField.swift
//  FuelCalc-UIKit
//
//  Created by Patryk Krajnik on 05/05/2021.
//

import Foundation
import UIKit

class InsertTextField: UITextField {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        translatesAutoresizingMaskIntoConstraints = false
        borderStyle = .roundedRect
        keyboardType = .numberPad
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
