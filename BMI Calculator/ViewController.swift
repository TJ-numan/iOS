//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Abdullah Al Numan on 11/25/19.
//  Copyright © 2019 TeamBoom. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var H: UILabel!
    @IBOutlet weak var W: UILabel!
    @IBOutlet weak var result: UILabel!
    var Ha = 0.0
    var We = 0.0
  
    @IBOutlet weak var weight: UISlider!
    @IBOutlet weak var hight: UISlider!
    @IBAction func hight_H(_ sender: UISlider) {
        let currentValue = Double(sender.value)
        self.Ha = currentValue
        H.text = "\(currentValue)"
    }
    @IBAction func wight_W(_ sender: UISlider) {
        let currentValue2 = Double(sender.value)
        self.We = currentValue2
        W.text = "\(currentValue2)"
    }
    func calculat()->Double
    {
        return self.We / (pow (self.Ha,2))
    }
    
    
    @IBAction func calculate(_ sender: Any) {
        result.text = String(calculat())
    
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

