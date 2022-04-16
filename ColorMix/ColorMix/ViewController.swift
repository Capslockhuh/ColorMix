//
//  ViewController.swift
//  ColorMix
//
//  Created by Jan Andrzejewski on 16/04/2022.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var ColorView: UIView!
    
    @IBOutlet weak var blueSwitch: UISwitch!
    @IBOutlet weak var greenSwitch: UISwitch!
    @IBOutlet weak var redSwitch: UISwitch!
    
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    
    @IBAction func switchChanged(_ sender: UISwitch) {
      updateColor()
        updateControls()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        ColorView.backgroundColor = .black
        
        ColorView.layer.borderWidth = 5
        ColorView.layer.cornerRadius = 20
        ColorView.layer.borderColor = UIColor.black.cgColor
    }
    
    
    func updateColor() {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        if redSwitch.isOn {
            red = CGFloat(redSlider.value)
        }
        if greenSwitch.isOn {
            green = CGFloat(greenSlider.value)
        }
        if blueSwitch.isOn {
            blue = CGFloat(blueSlider.value)
        }
        
        let color = UIColor(red: red, green: green,
           blue: blue, alpha: 1)
        ColorView.backgroundColor = color
    }
    
    
    @IBAction func sliderChanged(_ sender: Any) {
        updateColor()
    }
    
    @IBAction func redSliderChanged(_ sender: Any) {
        updateColor()
    }
    
    @IBAction func greenSliderChanged(_ sender: Any) {
        updateColor()
    }
    
    @IBAction func reset(_ sender: Any) {
        redSlider.value = 1
        blueSlider.value = 1
        greenSlider.value = 1
        
        redSwitch.isOn = false
        blueSwitch.isOn = false
        greenSwitch.isOn = false
        
        updateColor()
    }
    
    func updateControls() {
        blueSlider.isEnabled = blueSwitch.isOn
        redSlider.isEnabled = redSwitch.isOn
        greenSlider.isEnabled = greenSwitch.isOn
    }
}

