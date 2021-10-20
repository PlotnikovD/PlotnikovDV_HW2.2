//
//  ViewController.swift
//  PlotnikovDV_HW2.2
//
//  Created by Dmitrii on 20.10.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redCircle: UIView!
    @IBOutlet var yellowCircle: UIView!
    @IBOutlet var greenCircle: UIView!
    @IBOutlet var buttonText: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redCircle.alpha = 0.3
        yellowCircle.alpha = 0.3
        greenCircle.alpha = 0.3
        
        redCircle.layer.cornerRadius = 80
        yellowCircle.layer.cornerRadius = 80
        greenCircle.layer.cornerRadius = 80

    }
    
    @IBAction func switchColorButtonPressed() {
        buttonText.setTitle("NEXT", for: .normal)

        if (redCircle.alpha != 1) && (yellowCircle.alpha != 1) && (greenCircle.alpha != 1) {
                 redCircle.alpha = 1
             } else if redCircle.alpha == 1 {
                 redCircle.alpha = 0.3
                 yellowCircle.alpha = 1
             } else if yellowCircle.alpha == 1 {
                 yellowCircle.alpha = 0.3
                 greenCircle.alpha = 1
             } else if greenCircle.alpha == 1 {
                 greenCircle.alpha = 0.3
                 redCircle.alpha = 1
             }
     }
     }
