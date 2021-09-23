//
//  ViewController.swift
//  PaletteOfView
//
//  Created by Андрей  on 22.09.2021.
//

import UIKit

class ViewController: UIViewController {

    //MARK: - IBOutlet
    @IBOutlet var colorView: UIView!
    @IBOutlet var RedLabel: UILabel!
    @IBOutlet var GreenLabel: UILabel!
    @IBOutlet var BlueLabel: UILabel!
    @IBOutlet var redSliderOutlet: UISlider!
    @IBOutlet var greenSliderOutlet: UISlider!
    @IBOutlet var blueSliderOutlet: UISlider!
    
    //MARK: - LyfeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    //MARK: - IBAction
    @IBAction func RedSlider(_ sender: Any) {
        changeViewColor()
        RedLabel.text = String(format: "%.2f", redSliderOutlet.value)
        GreenLabel.text = String(format: "%.2f", greenSliderOutlet.value)
        BlueLabel.text = String(format: "%.2f", blueSliderOutlet.value)
    }
    
    //MARK: - Other Func
    func changeViewColor() {
        colorView.backgroundColor = UIColor(red: CGFloat(redSliderOutlet.value), green: CGFloat(greenSliderOutlet.value), blue: CGFloat(blueSliderOutlet.value), alpha: 1)
    }
}

