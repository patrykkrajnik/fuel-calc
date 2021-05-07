//
//  ResultViewController.swift
//  FuelCalc-UIKit
//
//  Created by Patryk Krajnik on 06/05/2021.
//

import UIKit

class ResultViewController: UIViewController {
    
    let resultView = ResultView()
    
    var distance: Int?
    var averageFuelConsumption: Float?
    var fuelPrice: Float?
    var result: Float?
    
    override func loadView() {
        view = resultView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        handleUserActions()
        configureLabels()
    }
    
    @objc func recalculateButtonPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    func handleUserActions() {
        resultView.recalculateButton.addTarget(self, action: #selector(recalculateButtonPressed(_:)), for: .touchUpInside)
    }
    
    func configureLabels() {
        let resultString = String(format: "%.2f", result!)
        let distanceString = "\(resultView.resultSectionView.distanceLabel.text!)  -  \(distance!) km"
        let fuelConsumptionString = "\(resultView.resultSectionView.fuelConsumptionLabel.text!)  -  \(averageFuelConsumption!) l/100km"
        let fuelPriceString = "\(resultView.resultSectionView.fuelPriceLabel.text!)  -  \(fuelPrice!)"
        
        resultView.resultValueLabel.text = resultString
        resultView.resultSectionView.distanceLabel.text = distanceString
        resultView.resultSectionView.fuelConsumptionLabel.text = fuelConsumptionString
        resultView.resultSectionView.fuelPriceLabel.text = fuelPriceString
    }

}
