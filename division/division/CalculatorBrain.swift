//
//  CalculatorBrain.swift
//  division
//
//  Created by John Garrigues on 8/21/21.
//

import Foundation
import UIKit

class CalculatorBrain:  NSObject {
    
    func divideTwoNumbers(dividend: Int, divisor: Int, completion:((_ result: Float?,_ error: NSError?) -> Void )) {
        
        Thread.sleep(forTimeInterval: 2)
        
        if divisor == 0 {
            let error = NSError(domain: "Error dividing by Zero", code: 1, userInfo: nil)
            return completion(nil, error)
        }
        return completion((Float(dividend)/Float(divisor)), nil)
    }
}
