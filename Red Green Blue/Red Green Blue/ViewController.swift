//
//  ViewController.swift
//  Red Green Blue
//
//  Created by Gleb Stepanovich on 04.12.2020.
//  Copyright © 2020 Gleb Stepanovich. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var rgbTextLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        redSlider.thumbTintColor = .red
        greenSlider.thumbTintColor = .green
        blueSlider.thumbTintColor = .blue
        
        redSlider.minimumTrackTintColor = .red
        greenSlider.minimumTrackTintColor = .green
        blueSlider.minimumTrackTintColor = .blue
        
        redSlider.minimumValue = Float(0)
        redSlider.maximumValue = Float(255)
        greenSlider.minimumValue = Float(0)
        greenSlider.maximumValue = Float(255)
        blueSlider.minimumValue = Float(0)
        blueSlider.maximumValue = Float(255)
        
        rgbTextLabel.text = ""
        
        
        
    }
    
    
   

    @IBAction func sliderColorChanger(_ sender: UISlider) {
        
        mainView.backgroundColor = UIColor(red: CGFloat(redSlider.value)/255, green: CGFloat(greenSlider.value)/255, blue: CGFloat(blueSlider.value)/255, alpha: 1)
        
        rgbTextLabel.text = String(Int(redSlider.value)) + ", " + String(Int(greenSlider.value)) + ", " + String(Int(blueSlider.value))
        
        
        
        
    }
    
}

