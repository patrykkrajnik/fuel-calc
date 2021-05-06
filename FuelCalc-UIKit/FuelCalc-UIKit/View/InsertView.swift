//
//  InsertView.swift
//  FuelCalc-UIKit
//
//  Created by Patryk Krajnik on 04/05/2021.
//

import Foundation
import UIKit

class InsertView: UIView {
    
    var safeArea: UILayoutGuide!
    let scaleRatio = UIScreen.main.bounds.height / 844
    
    var distanceSectionView = InsertSectionViewTextField(
        title: K.InsertViewTitles.distance,
        placeholder: K.InsertViewPlaceholders.distance)
    
    var averageConsumptionSectionView = InsertSectionViewSlider(
        title: K.InsertViewTitles.averageConsumption,
        maxValue: 40.0)
    
    var fuelPriceSectionView = InsertSectionViewSlider(
        title: K.InsertViewTitles.fuelPrice,
        maxValue: 10.0)
    
    lazy var headerLabel: UILabel = {
       let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = K.appName
        label.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        label.textColor = .label
        
        return label
    }()
    
    lazy var calculateButton: UIButton = {
       let button = UIButton()
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle(K.calculateButton, for: .normal)
        button.setTitleColor(.label, for: .normal)
        button.backgroundColor = .systemGray4
        button.titleLabel?.font = UIFont.systemFont(ofSize: 24, weight: .regular)
        button.layer.cornerRadius = 25.0
        
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = .systemBackground
        safeArea = self.layoutMarginsGuide
        
        configureView()
        configureSections()
    }
    
    func configureView() {
        addSubview(headerLabel)
        addSubview(calculateButton)
        
        headerLabel.topAnchor.constraint(equalTo: safeArea.topAnchor, constant: 20*scaleRatio).isActive = true
        headerLabel.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 10*scaleRatio).isActive = true
        
        calculateButton.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor, constant: -20*scaleRatio).isActive = true
        calculateButton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        calculateButton.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 40).isActive = true
        calculateButton.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor, constant: -40).isActive = true
        calculateButton.heightAnchor.constraint(equalToConstant: 60).isActive = true
    }
    
    func configureSections() {
        addSubview(distanceSectionView)
        addSubview(averageConsumptionSectionView)
        addSubview(fuelPriceSectionView)
        
        distanceSectionView.topAnchor.constraint(equalTo: headerLabel.bottomAnchor, constant: 20*scaleRatio).isActive = true
        distanceSectionView.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor).isActive = true
        distanceSectionView.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor).isActive = true
        distanceSectionView.heightAnchor.constraint(equalToConstant: 140).isActive = true
        
        averageConsumptionSectionView.topAnchor.constraint(equalTo: distanceSectionView.bottomAnchor, constant: 20).isActive = true
        averageConsumptionSectionView.leadingAnchor.constraint(equalTo: distanceSectionView.leadingAnchor).isActive = true
        averageConsumptionSectionView.trailingAnchor.constraint(equalTo: distanceSectionView.trailingAnchor).isActive = true
        averageConsumptionSectionView.heightAnchor.constraint(equalToConstant: 150).isActive = true
        
        fuelPriceSectionView.topAnchor.constraint(equalTo: averageConsumptionSectionView.bottomAnchor, constant: 20).isActive = true
        fuelPriceSectionView.leadingAnchor.constraint(equalTo: distanceSectionView.leadingAnchor).isActive = true
        fuelPriceSectionView.trailingAnchor.constraint(equalTo: distanceSectionView.trailingAnchor).isActive = true
        fuelPriceSectionView.heightAnchor.constraint(equalTo: distanceSectionView.heightAnchor).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
