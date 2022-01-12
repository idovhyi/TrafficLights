//
//  ViewController.swift
//  TrafficLights
//
//  Created by Ihor Dovhyi on 12.01.2022.
//

import UIKit

class ViewController: UIViewController {
    var numberColor: Int = 0
    @IBOutlet var redLight: UIView!
    
    @IBOutlet var yelowLight: UIView!
    
    @IBOutlet var greenLight: UIView!
    
    @IBOutlet var button: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        redLight.layer.cornerRadius = 75
        yelowLight.layer.cornerRadius = 75
        greenLight.layer.cornerRadius = 75
        redLight.backgroundColor = UIColor.red
        yelowLight.backgroundColor = UIColor.yellow
        greenLight.backgroundColor = UIColor.green
        redLight.alpha = 0.3
        yelowLight.alpha = 0.3
        greenLight.alpha = 0.3
        
    }


    @IBAction func buttonActive() {
        switch numberColor {
        case 1:
            redLight.alpha = 0.3
            yelowLight.alpha = 1
            numberColor = 2
        case 2:
            yelowLight.alpha = 0.3
            greenLight.alpha = 1
            numberColor = 3
        case 3:
            greenLight.alpha = 0.3
            redLight.alpha = 1
            numberColor = 1
        default:
            redLight.alpha = 1.0
            button.setTitle("NEXT", for: .normal)
            numberColor = 1
        }
    }
}

