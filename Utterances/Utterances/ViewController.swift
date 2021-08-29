//
//  ViewController.swift
//  Utterances
//
//  Created by John Garrigues on 8/28/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var keyLabel: UILabel!
    @IBOutlet weak var valueLabel: UILabel!
    @IBAction func translateButton(_ sender: Any) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}
struct Utterances {
    // properties
    var engName: String = ""
    var espName: String = ""
    // methods
    // if any
}

let buenosDias = Utterances(engName: "good morning", espName: "buenos días")
