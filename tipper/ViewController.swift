//
//  ViewController.swift
//  tipper
//
//  Created by Sparrow on 12/26/17.
//  Copyright © 2017 Sparrow. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var peopleField: UITextField!
    @IBOutlet weak var perPersonLabel: UILabel!
    
    
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
    
    @IBAction func caculateTip(_ sender: AnyObject) {
        let tipPercentages = [0.1, 0.15, 0.2]
        
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = tip + bill
//        tipLabel.text = "$\(tip)"
        tipLabel.text = String(format:"$%.2f", tip)
        totalLabel.text = String(format:"$%.2f", total)
        
        let people = Double(peopleField.text!) ?? 1
        let perPeople = total / people
        perPersonLabel.text = String(format:"$%.2f", perPeople)
    }
    
}

