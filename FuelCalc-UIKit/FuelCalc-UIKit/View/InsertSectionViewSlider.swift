//
//  InsertSectionViewSlider.swift
//  FuelCalc-UIKit
//
//  Created by Patryk Krajnik on 05/05/2021.
//

import Foundation
import UIKit

class InsertSectionViewSlider: UIView {
    
    var label = InsertLabel()
    var slider = InsertSlider()
    
    var currentValue: UILabel = {
        let value = UILabel()
        
        value.text = K.InsertViewPlaceholders.defaultSliderValue
        value.font = UIFont.systemFont(ofSize: 22, weight: .semibold)
        value.textColor = .label
        
        return value
    }()
    
    init(title: String, maxValue: Float) {
        super.init(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        
        configureView()
        configureLabels(title)
        configureSlider(maxValue)
    }
    
    func configureView() {
        backgroundColor = .systemGray6
        translatesAutoresizingMaskIntoConstraints = false
        layer.cornerRadius = 25.0
    }
    
    func configureLabels(_ title: String) {
        addSubview(label)
        addSubview(currentValue)
        
        label.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15).isActive = true
        label.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15).isActive = true
        label.centerYAnchor.constraint(equalTo: centerYAnchor, constant: -40).isActive = true
        label.heightAnchor.constraint(equalToConstant: 40).isActive = true
        label.text = title
        
        currentValue.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        currentValue.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        currentValue.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func configureSlider(_ maxValue: Float) {
        addSubview(slider)
        
        slider.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10).isActive = true
        slider.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10).isActive = true
        slider.centerYAnchor.constraint(equalTo: centerYAnchor, constant: 40).isActive = true
        
        slider.maximumValue = maxValue
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
