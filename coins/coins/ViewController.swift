//
//  ViewController.swift
//  coins
//
//  Created by John Garrigues on 8/14/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ethPrice: UILabel!
    @IBOutlet weak var checkButton: UIButton! {
        getData("https://api.coinbase.com/v2/prices/ETH-USD/spot")
    }
    override func viewDidLoad() {
        //super.viewDidLoad()
        
        let url = "https://api.coinbase.com/v2/prices/ETH-USD/spot"
        getData(from: url)
        
    }
    
    private func getData(from url: String) {
        let task = URLSession.shared.dataTask(with: URL(string: url)!, completionHandler: { [self] data, response, error in
            guard let data = data, error == nil else {
                print("something went wrong")
                return
            }
            var result: Response?
            do {
                result = try JSONDecoder().decode(Response.self, from: data)
            }
            catch {
                print("failed to convert \(error.localizedDescription)")
            }
            guard let json = result else {
                return
            }
            // print(json.data), print(json.data.base), print(json.data.currency)
            let ethusd = json.data.amount
            //let formattedValue = "\(ethusd.formatted("$%.02f")"
            ethPrice.text = String("$\(ethusd)")
        })
        task.resume()
        
    }
}

struct Response: Codable {
    let data: MyResult
}

struct MyResult: Codable {
    let base: String
    let currency: String
    let amount: String
}



/*
 {
    "data":{
        "base":"BTC",
        "currency":"USD",
        "amount":"46606.08"
    }
 }
 */





//        func getPrice() {
//
//
////        let jsonData: Void = URLSession.shared.dataTask(with: URL(string: "https://api.coinbase.com/v2/prices/ETH-USD/spot")!) {(data, response, error) in
////            print(String(data: data!, encoding: .utf8)!)
////        }.resume()
//
//        let url = URL(string: "https://api.coinbase.com/v2/prices/ETH-USD/spot")!
//
//        let task = URLSession.shared.dataTask(with: url) {(data, response, error) in
//            guard let data = data else { return }
//        do {
//            if let json = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] {
//                if let data = json["data"] as? [String:Any] {
//                    if let prices = data["prices"] as? [[String:Any]] {
//                        let dict = prices[0]
//                        if (dict["price"] as? String) != nil{
//                            }
//                        }
//                    self.ethPrice.text = data["amount"] as? String
//                    }
//                }
//            } catch let error as NSError {
//                print("Failed to load: \(error.localizedDescription)")
//            }
//        }
//        task.resume()
//    }
//    getPrice()
//}
//}
