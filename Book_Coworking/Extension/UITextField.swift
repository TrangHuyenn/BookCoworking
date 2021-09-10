//
//  UITextField.swift
//  Book_Coworking
//
//  Created by Trang Huyền on 9/10/21.
//

import UIKit

extension UITextField {
    func textField(placeholder: String) -> UITextField {
        let input = UITextField()
        input.translatesAutoresizingMaskIntoConstraints = false
        input.autocapitalizationType = .none
        input.placeholder = placeholder
        input.layer.cornerRadius = 8
        input.layer.borderWidth = 0.5
        input.layer.borderColor = #colorLiteral(red: 0.8745098039, green: 0.6156862745, blue: 0.3803921569, alpha: 1)
        return input
    }

}
