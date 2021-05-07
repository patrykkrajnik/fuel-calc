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
    
    lazy var summaryLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = K.ResultViewTitles.summary
        label.font = UIFont.systemFont(ofSize: 22, weight: .semibold)
        label.textColor = .label
        
        return label
    }()
    
    init(distance: String, fuelConsumption: String, fuelPrice: String) {
        super.init(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        
        configureView()
        configureLabels(distance, fuelConsumption, fuelPrice)
    }
    
    func configureView() {
        backgroundColor = .systemGray6
        translatesAutoresizingMaskIntoConstraints = false
        layer.cornerRadius = 25.0
    }
    
    func configureLabels(_ distance: String, _ fuelConsumption: String, _ fuelPrice: String) {
        addSubview(summaryLabel)
        addSubview(distanceLabel)
        addSubview(fuelConsumptionLabel)
        addSubview(fuelPriceLabel)
        
        summaryLabel.topAnchor.constraint(equalTo: topAnchor, constant: 10).isActive = true
        summaryLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        distanceLabel.topAnchor.constraint(equalTo: summaryLabel.bottomAnchor, constant: 25).isActive = true
        distanceLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30).isActive = true
        distanceLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30).isActive = true
        distanceLabel.text = distance
        
        fuelConsumptionLabel.topAnchor.constraint(equalTo: distanceLabel.bottomAnchor, constant: 15).isActive = true
        fuelConsumptionLabel.leadingAnchor.constraint(equalTo: distanceLabel.leadingAnchor).isActive = true
        fuelConsumptionLabel.trailingAnchor.constraint(equalTo: distanceLabel.trailingAnchor).isActive = true
        fuelConsumptionLabel.text = fuelConsumption
        
        fuelPriceLabel.topAnchor.constraint(equalTo: fuelConsumptionLabel.bottomAnchor, constant: 15).isActive = true
        fuelPriceLabel.leadingAnchor.constraint(equalTo: fuelConsumptionLabel.leadingAnchor).isActive = true
        fuelPriceLabel.trailingAnchor.constraint(equalTo: fuelConsumptionLabel.trailingAnchor).isActive = true
        fuelPriceLabel.text = fuelPrice
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
