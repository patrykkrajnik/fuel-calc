//
//  ViewController.swift
//  FuelCalc-UIKit
//
//  Created by Patryk Krajnik on 04/05/2021.
//

import UIKit

class InsertViewController: UIViewController {
    
    let insertView = InsertView()
    var calcManager = CalcManager()
    
    override func loadView() {
        view = insertView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        calcManager.delegate = self
        handleUserActions()
    }
    
    @objc func dismissKeyboard() {
        insertView.endEditing(true)
    }

    @objc func calculateButtonPressed(_ sender: UIButton) {
        let distance = Int(insertView.distanceSectionView.textField.text!)
        let consumption = insertView.averageConsumptionSectionView.slider.value.roundToOnePlace()
        let price = insertView.fuelPriceSectionView.slider.value.roundToOnePlace()
        
        calcManager.calculateCost(distance, consumption, price)
    }
    
    @objc func consumptionValueChanged(_ sender: UISlider) {
        let consumption = String(format: "%.1f", sender.value)
        insertView.averageConsumptionSectionView.currentValue.text = consumption
    }
    
    @objc func priceValueChanged(_ sender: UISlider) {
        let fuelPrice = String(format: "%.1f", sender.value)
        insertView.fuelPriceSectionView.currentValue.text = fuelPrice
    }
    
    func handleUserActions() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
        insertView.addGestureRecognizer(tap)
        
        insertView.calculateButton.addTarget(self, action: #selector(calculateButtonPressed), for: .touchUpInside)
        insertView.averageConsumptionSectionView.slider.addTarget(self, action: #selector(consumptionValueChanged(_:)), for: .valueChanged)
        insertView.fuelPriceSectionView.slider.addTarget(self, action: #selector(priceValueChanged(_:)), for: .valueChanged)
    }
}

// MARK: - CalcManagerDelegate

extension InsertViewController: CalcManagerDelegate {
    func didCalculateSuccessfully() {
        print("Show result")
    }
    
    func didFailCalculating() {
        print("Insert distance")
    }
}
