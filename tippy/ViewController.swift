//
//  ViewController.swift
//  tippy
//
//  Created by Abdur Rafey on 8/7/18.
//  Copyright © 2018 Abdur Rafey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var TaxLabel: UILabel!
    @IBOutlet weak var BillField: UITextField!
    @IBOutlet weak var TipLabel: UILabel!
    @IBOutlet weak var TotalLabel: UILabel!
    @IBOutlet weak var TipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(_ sender: AnyObject) {
        
        view.endEditing(true)
    }
    
    
    @IBAction func CalculateTip(_ sender: AnyObject) {
        
        let tipPercentages = [0.1, 0.2, 0.3]
        
        let bill = Double(BillField.text!) ?? 0
        let tax = (bill * 0.10) + bill
        let tip = bill * tipPercentages[TipControl.selectedSegmentIndex]
        let total = (tip + tax)
        
        TaxLabel.text = String(format: "$%.2f", tax)
        TipLabel.text = String(format: "$%.2f", tip)
        TotalLabel.text = String(format: "$%.2f", total)
    }

}

