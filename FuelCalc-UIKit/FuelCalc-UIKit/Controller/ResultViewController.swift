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
        
        resultView.resultValueLabel.text = resultString
    }

}
