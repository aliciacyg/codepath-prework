//
//  ViewController.swift
//  Prework
//
//  Created by Alicia G on 2/5/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var tipControlSlider: UISlider!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var sliderdisplay: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billAmountTextField.text!) ?? 0
        
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        tipAmountLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }

    @IBAction func sliderCalc(_ sender: Any) {
        let bill = Double(billAmountTextField.text!) ?? 0
        let sliderdisplaytext = Int(slider.value)
        let tipPercentages = Double(slider.value / 100)
        let tip = bill * tipPercentages
        let total = bill + tip
        
        sliderdisplay.text = "\(sliderdisplaytext)" + "%"
        tipAmountLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    

}

