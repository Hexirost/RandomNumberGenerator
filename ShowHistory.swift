//
//  showHistory.swift
//  Random Number Generator
//
//  Created by Jeffrey Lin on 5/23/15.
//  Copyright (c) 2015 Jeffrey Lin. All rights reserved.
//

import UIKit

class showHistory : TextViewController, UIPopoverPresentationControllerDelegate{
    
    /*override var textView: Int {
        didSet{
            history += [textHistory]
        }
    }*/
    
    private struct History {
        static let SegueIdentifier = "Show History"
        static let DefaultKey = "TextViewController.History"
    }
    
    func adaptivePresentationStyleForPresentationController(controller: UIPresentationController!, traitCollection: UITraitCollection!) -> UIModalPresentationStyle {
        return UIModalPresentationStyle.None
    }
}
