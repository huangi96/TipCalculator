//
//  ViewController.swift
//  Tipster
//
//  Created by Rita Huang on 12/29/15.
//  Copyright © 2015 Rita Huang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipPercentageLabel:UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }

    @IBAction func billAmountChanged(sender: AnyObject) {
        let billAmount = billField.text!._bridgeToObjectiveC().doubleValue
        let tipPercentages = [0.12,0.15,0.18]
        let tipPercentage = tipPercentages[tipPercentageLabel.selectedSegmentIndex]
        let tip = billAmount * tipPercentage
        let total = billAmount + tip


        
        tipLabel.text = "$\(tip)"
        totalLabel.text = "$\(total)"
        
        tipLabel.text = String(format:"$%0.2f",tip)
        totalLabel.text = String(format:"$%0.2f",total)
        
    }
}

