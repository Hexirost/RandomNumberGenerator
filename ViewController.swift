//
//  ViewController.swift
//  Random Number Generator
//
//  Created by Jeffrey Lin on 5/23/15.
//  Copyright (c) 2015 Jeffrey Lin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var newNumber: UILabel!
    @IBOutlet weak var startRange: UITextField!
    @IBOutlet weak var endRange: UITextField!
 
    @IBAction func generate(sender: AnyObject) {
        let range = endRange.text.toInt()! - startRange.text.toInt()!
        let hello = (random() % range) + startRange.text.toInt()!
        
        newNumber.text = "\(hello)"
    }
    
    var displayValue: Double{
        get{
            return NSNumberFormatter().numberFromString(newNumber.text!)!.doubleValue
        }
        set{
            newNumber.text = "\(newValue)"
        }
    }
}
