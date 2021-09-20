//
//  PaymentConfirmController.swift
//  Book_Coworking
//
//  Created by Trang Huyền on 9/20/21.
//

import UIKit

class PaymentConfirmController: UIViewController {
    
    let button = UIButton().button(text: "Confirm Payment")

    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(button)
        setUpLayout()
    }
    
    func setUpLayout(){
        button.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -10).isActive = true
        button.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        button.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        button.heightAnchor.constraint(equalToConstant: 60).isActive = true
    }


}
