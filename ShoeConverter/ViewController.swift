//
//  ViewController.swift
//  ShoeConverter
//
//  Created by Gustavo Cunha on 9/23/14.
//  Copyright (c) 2014 Gustavo Cunha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var menShoeSizeTextField: UITextField!
    @IBOutlet weak var convertedSizeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertButtonPressed(sender: UIButton) {
        let conversionConstant = 30
        convertedSizeLabel.text = "\(menShoeSizeTextField.text.toInt()! + conversionConstant) in European Shoe Size"
        convertedSizeLabel.hidden = false
    }

}

