//
//  ViewController.swift
//  StepProgressBar
//
//  Created by SerhiiMatvieiev on 04/17/2017.
//  Copyright (c) 2017 SerhiiMatvieiev. All rights reserved.
//

import UIKit
import StepProgressBar

class ViewController: UIViewController {

    @IBOutlet weak var progressView: StepProgressBar!
    
    @IBAction func previous(_ sender: UIButton) {
        progressView.previous()
    }
    
    @IBAction func next(_ sender: UIButton) {
        progressView.next()
    }

}

