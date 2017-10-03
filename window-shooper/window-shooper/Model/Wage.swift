//
//  Wage.swift
//  window-shooper
//
//  Created by Yash Shelatkar on 3/10/17.
//  Copyright © 2017 Yash Shelatkar. All rights reserved.
//

import Foundation
class Wage{
    class func getHours(forWage wage: Double, andPrice price:Double) ->Int {
        return Int(ceil(price/wage))
        
    }

}

