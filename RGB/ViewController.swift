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
        
        setScreenView()
        setValue(for: redLabel, greenLabel, blueLabel)
        
//        redLabel.text = String(redSlider.value)
//        greenLabel.text = String(greenSlider.value)
//        blueLabel.text = String(blueSlider.value)
    }

    @IBAction func rgbSliderAction() {
        setScreenView()
        setValue(for: redLabel, greenLabel, blueLabel)
        
   //     redLabel.text = String(format: "%.2f", redSlider)
    }
    
//    @IBAction func grenScaleSet() {
//        greenLabel.text = String(round(greenSlider.value * 100) / 100 )
//        setScreenView()
//    }
//
//    @IBAction func blueScaleSet() {
//        blueLabel.text = String(round(blueSlider.value * 1000) / 1000 )
//        setScreenView()
//    }
    
    private func setScreenView() {
        screenView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }
    
    private func setValue(for labels: UILabel...) {
        labels.forEach { label in
            switch label {
            case redLabel:
                redLabel.text = String(format: "%.2f", redSlider.value)
            case greenLabel:
                greenLabel.text = String(format: "%.2f", greenSlider.value)
            default:
                blueLabel.text = String(format: "%.2f", blueSlider.value)
            }
        }
//        redLabel.text = String(format: "%.2f", redSlider)
//        greenLabel.text = String(format: "%.2f", greenSlider)
//        blueLabel.text = String(format: "%.2f", blueSlider)
    }
}
