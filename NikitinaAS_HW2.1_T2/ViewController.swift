//
//  ViewController.swift
//  NikitinaAS_HW2.1_T2
//
//  Created by Анна Никитина on 07.07.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var redLightView: UIView!
    @IBOutlet weak var yellowLightView: UIView!
    @IBOutlet weak var greenLightView: UIView!
    
    @IBOutlet weak var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLightView.layer.cornerRadius = self.redLightView.frame.width / 2.0
        redLightView.alpha = 0.3
        
        yellowLightView.layer.cornerRadius = self.yellowLightView.frame.width / 2.0
        yellowLightView.alpha = 0.3
        
        greenLightView.layer.cornerRadius = self.greenLightView.frame.width / 2.0
        greenLightView.alpha = 0.3
        
        startButton.layer.cornerRadius = self.startButton.frame.height / 2.0
    }

    @IBAction func startButtonPressed() {
        if redLightView.alpha == 1 {
            redLightView.alpha = 0.3
            yellowLightView.alpha = 1
        } else if yellowLightView.alpha == 1 {
            yellowLightView.alpha = 0.3
            greenLightView.alpha = 1
        } else if greenLightView.alpha == 1 {
            greenLightView.alpha = 0.3
            redLightView.alpha = 1
        } else {
            redLightView.alpha = 1
            startButton.setTitle("NEXT", for: .normal)
        }
    }
    
}

