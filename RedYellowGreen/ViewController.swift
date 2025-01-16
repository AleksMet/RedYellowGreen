//
//  ViewController.swift
//  RedYellowGreen
//
//  Created by Александр Метельский on 16.01.2025.
//

import UIKit

class ViewController: UIViewController {
    
    var currentSquareIndex = 0

    @IBOutlet var greenLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var reedLightView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        reedLightView.alpha = 0.3
        yellowLightView.alpha = 0.3
        greenLightView.alpha = 0.3
        
        reedLightView.layer.cornerRadius = 50
        yellowLightView.layer.cornerRadius = 50
        greenLightView.layer.cornerRadius = 50
        // Do any additional setup after loading the view.
    }

    @IBAction func changeLightDidTup(_ sender: UIButton) {
        reedLightView.alpha = 0.3
        yellowLightView.alpha = 0.3
        greenLightView.alpha = 0.3
        
        sender.setTitle("NEXT", for: .normal)
        
        switch currentSquareIndex {
        case 0:
            reedLightView.alpha = 1.0
        case 1:
            yellowLightView.alpha = 1.0
        case 2:
            greenLightView.alpha = 1.0
        default:
            break
        }
        
        currentSquareIndex = (currentSquareIndex + 1) % 3
    }
    
}

