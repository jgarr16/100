//
//  ViewController.swift
//  coins
//
//  Created by John Garrigues on 8/14/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ethPrice: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let url = URL(string: "https://api.coinbase.com/v2/prices/ETH-USD/spot")!

        let task = URLSession.shared.dataTask(with: url) {(data, response, error) in
            guard let data = data else { return }
//            print(String(data: data, encoding: .utf8)!)
//            print()

        do {
                     
            var ethPrice = ""
            // make sure this JSON is in the format we expect
                     // convert data to json
                     if let json = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] {
                         // try to read out a dictionary
                         //print(json)
                         if let data = json["data"] as? [String:Any] {
                            self.ethPrice = data["amount"]! as? UILabel
                             if let prices = data["prices"] as? [[String:Any]] {
                                 //print(prices)
                                 let dict = prices[0]
                                 //print(dict)
                                 if let price = dict["price"] as? String{
                                     //print(price)
                                 }
                             }
                         }
                     }
                 } catch let error as NSError {
                     print("Failed to load: \(error.localizedDescription)")
                
                 }
             }

        task.resume()
    }

}

