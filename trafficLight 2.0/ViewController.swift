//
//  ViewController.swift
//  trafficLight 2.0
//
//  Created by Rustam Bakhritdinov on 23.10.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var yellowLight: UIView!
    @IBOutlet weak var greenLight: UIView!
    @IBOutlet weak var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLight.layer.cornerRadius = 75
        yellowLight.layer.cornerRadius = 75
        greenLight.layer.cornerRadius = 75
        startButton.layer.cornerRadius = 10
        
        redLight.alpha = 0.3
        yellowLight.alpha = 0.3
        greenLight.alpha = 0.3
    }
    
    func changeOppasity() {
        if redLight.alpha < 1 && yellowLight.alpha < 1 && greenLight.alpha < 1 {
            redLight.alpha = 1
        } else if redLight.alpha == 1 && yellowLight.alpha < 1 && greenLight.alpha < 1 {
            yellowLight.alpha = 1
            redLight.alpha = 0.3
        } else if redLight.alpha < 1 && yellowLight.alpha == 1 && greenLight.alpha < 1 {
            yellowLight.alpha = 0.3
            greenLight.alpha = 1
        }
    }
    
    func changeButtonTitle() {
        if redLight.alpha == 1 {
            startButton.setTitle("NEXT", for: .normal)
        }
    }
    
    
        
        @IBAction func buttonPressed(_ sender: UIButton) {
            changeOppasity()
            changeButtonTitle()
        }
    
}
