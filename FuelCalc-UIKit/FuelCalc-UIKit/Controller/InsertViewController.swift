//
//  ViewController.swift
//  FuelCalc-UIKit
//
//  Created by Patryk Krajnik on 04/05/2021.
//

import UIKit

class InsertViewController: UIViewController {
    
    let insertView = InsertView()
    
    override func loadView() {
        view = insertView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        handleUserActions()
    }
    
    @objc func dismissKeyboard() {
        insertView.endEditing(true)
    }

    @objc func calculateButtonPressed(_ sender: UIButton) {
        print("Distance: \(insertView.distanceSectionView.textField.text)")
        print("Fuel consumption: \(insertView.averageConsumptionSectionView.slider.value)")
        print("Fuel price: \(insertView.fuelPriceSectionView.slider.value)")
    }
    
    @objc func consumptionValueChanged(_ sender: UISlider) {
        insertView.averageConsumptionSectionView.currentValue.text = String(format: "%.1f", sender.value)
    }
    
    @objc func priceValueChanged(_ sender: UISlider) {
        insertView.fuelPriceSectionView.currentValue.text = String(format: "%.1f", sender.value)
    }
    
    func handleUserActions() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
        insertView.addGestureRecognizer(tap)
        
        insertView.calculateButton.addTarget(self, action: #selector(calculateButtonPressed), for: .touchUpInside)
        insertView.averageConsumptionSectionView.slider.addTarget(self, action: #selector(consumptionValueChanged(_:)), for: .valueChanged)
        insertView.fuelPriceSectionView.slider.addTarget(self, action: #selector(priceValueChanged(_:)), for: .valueChanged)
    }
}

