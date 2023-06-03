//
//  ViewController.swift
//  RGB
//
//  Created by Dmitry Morozov on 01.06.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var screenView: UIView!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        screenView.layer.cornerRadius = 10
        redLabel.text = String(redSlider.value)
        greenLabel.text = String(greenSlider.value)
        blueLabel.text = String(blueSlider.value)
    }

    @IBAction func redScaleSet() {
        redLabel.text = String(round(redSlider.value * 1000) / 1000 )
    }
    
    @IBAction func grenScaleSet() {
        greenLabel.text = String(round(greenSlider.value * 1000) / 1000 )
    }
    
    @IBAction func blueScaleSet() {
        blueLabel.text = String(round(blueSlider.value * 1000) / 1000 )
    }
    
}

