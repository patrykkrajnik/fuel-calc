//
//  ResultView.swift
//  FuelCalc-UIKit
//
//  Created by Patryk Krajnik on 06/05/2021.
//

import Foundation
import UIKit

class ResultView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .red
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
