//
//  ViewController.swift
//  Tip
//
//  Created by Yihui Liao on 7/9/20.
//  Copyright © 2020 CodePath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
        
    
    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var billField: UITextField!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var splitControl: UISegmentedControl!
    
    @IBOutlet weak var splitLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        billField.becomeFirstResponder()
        
    }
    
    //If the user taps off the text field, the keyboard will close
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
  
    @IBAction func calculateTip(_ sender: Any) {

        let bill = Double(billField.text!) ?? 0


        let tipPercentages = [0.15, 0.18, 0.20]
        let splitPeople = [1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        
        let total = bill + tip
        
        let split = (bill + tip)/splitPeople[splitControl.selectedSegmentIndex]

        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        splitLabel.text = String(format: "$%.2f", split)

    }
}

