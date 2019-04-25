//
//  ViewController.swift
//  HWtip
//
//  Created by Daniel on 2019/4/24.
//  Copyright © 2019 Daniel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var personTextField: UITextField!
    @IBOutlet weak var priceTextField: UITextField!
    @IBOutlet weak var tipTextField: UITextField!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var avgLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculate(_ sender: UIButton) {
        let priceText = priceTextField.text!
        let tipText = tipTextField.text!
        let personText = personTextField.text!
        let price = Int(priceText)
        let tip = Int(tipText)
        let person = Int(personText)
       // let total = price! + (price! * tip! / 100)
        if price != nil,tip != nil,person != nil {
            let total = price! + (price! * tip! / 100)
            let avg = total / person!
            avgLabel.text = String(avg)
        } else if price != nil,tip != nil{
            let total = price! + (price! * tip! / 100)
            totalLabel.text = String(total)
            
        }
        //view.endEditing(true)
    }
    @IBAction func restart(_ sender: UIButton) {
        priceTextField.text = nil
        tipTextField.text = nil
        personTextField.text = nil
        totalLabel.text = nil
        avgLabel.text = nil
    }
    
}

