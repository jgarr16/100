//
//  ViewController.swift
//  Utterances
//
//  Created by John Garrigues on 8/28/21.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player: AVAudioPlayer!
    
    @IBOutlet weak var keyLabel: UILabel!
    @IBOutlet weak var valueLabel: UILabel!
    @IBAction func translateButton(_ sender: Any) {
        var buenosDias = Utterances()
        // setup the first definition
        print("\n\n\n\n\(sender)\n\n\n\n\n")
        buenosDias.engName = "good morning"
        keyLabel.text = buenosDias.engName
        buenosDias.espName = "buenos días"
        valueLabel.text = buenosDias.espName
    }
    @IBAction func playAudio(_ sender: Any) {
        playSound(soundName: Sounds/buenosDias.mp3!)
        UIView.animate(withDuration: 0.1) {
//            (sender as AnyObject).alpha=0.5
    }
        
    func viewDidLoad() {
        super.viewDidLoad()
    }
        
}

    func playSound(soundName: String) {
        
        let url = Bundle.main.url(forResource: soundName, withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
        
    }
    
struct Utterances {
    // properties
    var engName = ""
    var espName = ""
    
        // methods
        func printEngName() {
            print(engName)
        }
        
        func printEspName() {
            print(espName)
        }
    }


}
