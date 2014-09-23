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
    @IBOutlet weak var menConvertedSizeLabel: UILabel!
    
    @IBOutlet weak var womenShoeTextField: UITextField!
    @IBOutlet weak var womenConvertedSizeLabel: UILabel!
    
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
        menConvertedSizeLabel.text = "\(menShoeSizeTextField.text.toInt()! + conversionConstant) in European Shoe Size"
        menConvertedSizeLabel.hidden = false
    }

    @IBAction func convertWomenButtonPressed(sender: UIButton) {
        let sizeFromTextField = Double((womenShoeTextField.text as NSString).doubleValue)
        let conversionConstant = 30.5
        womenConvertedSizeLabel.text = "\(sizeFromTextField + conversionConstant) in European Shoe Size"
        womenConvertedSizeLabel.hidden = false
    }
}

