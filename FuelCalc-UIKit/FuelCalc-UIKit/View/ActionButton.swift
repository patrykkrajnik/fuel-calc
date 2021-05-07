//
//  ActionButton.swift
//  FuelCalc-UIKit
//
//  Created by Patryk Krajnik on 07/05/2021.
//

import Foundation
import UIKit

class ActionButton: UIButton {
    
    init(title: String) {
        super.init(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        
        translatesAutoresizingMaskIntoConstraints = false
        setTitle(title, for: .normal)
        setTitleColor(.label, for: .normal)
        backgroundColor = .systemGray4
        titleLabel?.font = UIFont.systemFont(ofSize: 24, weight: .regular)
        layer.cornerRadius = 25.0
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
