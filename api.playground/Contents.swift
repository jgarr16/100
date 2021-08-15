import Foundation
import PlaygroundSupport
// PlaygroundPage.current.needsIndefiniteExecution = true

//let url = URL(string: "https://api.coinbase.com/v2/prices/ETH-USD/spot")!
//
//let task = URLSession.shared.dataTask(with: url) {(data, response, error) in
//    guard let data = data else { return }
//    print(String(data: data, encoding: .utf8)!)
//    print()
//}
//
//task.resume()


let jsonData = URLSession.shared.dataTask(with: URL(string: "https://api.coinbase.com/v2/prices/ETH-USD/spot")!) {(data, response, error) in
    print(String(data: data!, encoding: .utf8)!)
}.resume()
//print(jsonData)

