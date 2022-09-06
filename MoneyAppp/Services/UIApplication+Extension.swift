//
//  UIApplication+Extension.swift
//  MoneyAppp
//
//  Created by Jhovany Gonzalez on 9/5/22.
//

import UIKit

extension UIApplication {
    func endEditing(){
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
