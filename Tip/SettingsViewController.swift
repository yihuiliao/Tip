//
//  SettingsViewController.swift
//  Tip
//
//  Created by Yihui Liao on 7/19/20.
//  Copyright © 2020 CodePath. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController{
    
    @IBOutlet weak var defaultTipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        let defaults = UserDefaults.standard

        defaultTipControl.selectedSegmentIndex = defaults.integer(forKey: "myInt")
        
    }
    
    @IBAction func  setDefault(_ sender: Any){
        let defaults = UserDefaults.standard

        let index = defaultTipControl.selectedSegmentIndex

        defaults.set(index, forKey: "myInt")

        defaults.synchronize();
                
    }
    
//    let defaults = UserDefaults.standard
//
//    let index = defaultTipControl.selectedSegmentIndex
//
//    defaults.set(index, forKey: "myInt")
//
//    defaults.synchronize();

}



