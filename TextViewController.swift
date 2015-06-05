//
//  textViewController.swift
//  Random Number Generator
//
//  Created by Jeffrey Lin on 5/23/15.
//  Copyright (c) 2015 Jeffrey Lin. All rights reserved.
//

import UIKit

class TextViewController: UIViewController {
    
    var text: String = ""{
        didSet{
            textView?.text = text
        }
    }
    
    @IBOutlet weak var textView: UITextView!{
        didSet{
            textView.text = text
        }
    }
   
    override var preferredContentSize: CGSize {
        get{
            if textView != nil && presentedViewController != nil{
                return textView.sizeThatFits(presentedViewController!.view.bounds.size)
            } else{
                return super.preferredContentSize
            }
        }
        set{ super.preferredContentSize = newValue}
    }

}