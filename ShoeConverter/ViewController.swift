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
        let sizeFromTextField = menShoeSizeTextField.text
        let numberFromTextField = sizeFromTextField.toInt()
        var integerFromTextField = numberFromTextField!
        let conversionConstant = 30
        integerFromTextField += 30
        let stringWithUpdatedShoeSize = "\(integerFromTextField)"
        convertedSizeLabel.text = stringWithUpdatedShoeSize
        convertedSizeLabel.hidden = false
    }

}

