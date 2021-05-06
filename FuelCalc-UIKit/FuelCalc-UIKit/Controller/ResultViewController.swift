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
        
    }

}
