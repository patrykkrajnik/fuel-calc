//
//  InsertSectionView.swift
//  FuelCalc-UIKit
//
//  Created by Patryk Krajnik on 05/05/2021.
//

import Foundation
import UIKit

class InsertSectionViewTextField: UIView {
    
    var label = InsertLabel()
    var textField = InsertTextField()
    
    init(title: String, placeholder: String) {
        super.init(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        
        configureView()
        configureLabel(title)
        configureTextField(placeholder)
    }
    
    func configureView() {
        backgroundColor = .systemGray6
        translatesAutoresizingMaskIntoConstraints = false
        layer.cornerRadius = 25.0
    }
    
    func configureLabel(_ title: String) {
        addSubview(label)
        
        label.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15).isActive = true
        label.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10).isActive = true
        label.centerYAnchor.constraint(equalTo: centerYAnchor, constant: -20).isActive = true
        label.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        label.text = title
    }
    
    func configureTextField(_ placeholder: String) {
        addSubview(textField)
        
        textField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10).isActive = true
        textField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10).isActive = true
        textField.centerYAnchor.constraint(equalTo: centerYAnchor, constant: 20).isActive = true
        textField.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        textField.placeholder = placeholder
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
