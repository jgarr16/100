//
//  ViewController.swift
//  division
//
//  Created by John Garrigues on 8/21/21.
//

import UIKit

class ViewController: UIViewController {

    let calculatorBrain = CalculatorBrain()
    
    @IBOutlet weak var div1TextField: UITextField!
    @IBOutlet weak var div2TextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBAction func calculateButton(_ sender: Any) {
    }
  
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
}

