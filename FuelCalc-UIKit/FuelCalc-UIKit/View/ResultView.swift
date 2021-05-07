//
//  ResultView.swift
//  FuelCalc-UIKit
//
//  Created by Patryk Krajnik on 06/05/2021.
//

import Foundation
import UIKit

class ResultView: UIView {
    
    var safeArea: UILayoutGuide!
    
    var recalculateButton = ActionButton(title: K.recalculateButton)
    
    var resultSectionView = ResultSectionView(
        distance: K.ResultViewTitles.distance,
        fuelConsumption: K.ResultViewTitles.averageConsumption,
        fuelPrice: K.ResultViewTitles.fuelPrice)
    
    lazy var resultLabel: UILabel = {
       let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = K.ResultViewTitles.result
        label.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        
        return label
    }()
    
    lazy var resultValueLabel: UILabel = {
       let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 36, weight: .regular)
        
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .systemBackground
        safeArea = self.layoutMarginsGuide
        
        configureView()
        configureSection()
    }
    
    func configureView() {
        addSubview(resultLabel)
        addSubview(resultValueLabel)
        addSubview(recalculateButton)
        
        resultLabel.topAnchor.constraint(equalTo: safeArea.topAnchor, constant: 30).isActive = true
        resultLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        resultValueLabel.topAnchor.constraint(equalTo: resultLabel.bottomAnchor, constant: 10).isActive = true
        resultValueLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        recalculateButton.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor, constant: -20).isActive = true
        recalculateButton.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 40).isActive = true
        recalculateButton.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor, constant: -40).isActive = true
        recalculateButton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        recalculateButton.heightAnchor.constraint(equalToConstant: 60).isActive = true
    }
    
    func configureSection() {
        addSubview(resultSectionView)
        
        resultSectionView.topAnchor.constraint(equalTo: resultValueLabel.bottomAnchor, constant: 40).isActive = true
        resultSectionView.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor).isActive = true
        resultSectionView.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor).isActive = true
        resultSectionView.heightAnchor.constraint(equalToConstant: 180).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
