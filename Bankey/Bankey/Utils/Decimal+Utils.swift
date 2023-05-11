//
//  DecimalUtils.swift
//  Bankey
//
//  Created by Иван Дроботов on 10.05.2023.
//

import Foundation

extension Decimal {
    var doubleValue: Double {
        return NSDecimalNumber(decimal: self).doubleValue
    }
}
