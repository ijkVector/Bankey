//
//  UIResponder+Utils.swift
//  Password
//
//  Created by Иван Дроботов on 16.05.2023.
//

import UIKit

extension UIResponder {
    
    private struct Static {
        static weak var responder: UIResponder?
    }
    
    /// Find the current first responder
    ///  - Returns: the current UIResponder if it exists
    static func currentFirst() -> UIResponder? {
        Static.responder = nil
        UIApplication.shared.sendAction(#selector(UIResponder._trap), to: nil, from: nil, for: nil)
        return Static.responder
    }
    
    @objc func _trap() {
        Static.responder = self
    }
}
