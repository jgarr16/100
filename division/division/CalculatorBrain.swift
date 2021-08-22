//
//  CalculatorBrain.swift
//  division
//
//  Created by John Garrigues on 8/21/21.
//

import Foundation
import UIKit

class CalculatorBrain:  NSObject {
    
    func divideTwoNumbers(dividend: Int, divisor: Int) -> Float? {
        return Float(dividend)/Float(divisor)
    }
}
