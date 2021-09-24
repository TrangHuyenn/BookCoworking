//
//  Coworking.swift
//  Book_Coworking
//
//  Created by Trang Huyền on 9/5/21.
//

import Foundation
import UIKit

struct Coworking {
    let id: String
    let name: String
    let address: String
    let rate: CGFloat
    let price: CGFloat
    let description: String
    let images: [String]
    init(_ id: String,_ name: String,_ address: String,_ rate: CGFloat,_ price: CGFloat,_ description: String,_ images: [String]) {
        self.id = id
        self.name = name
        self.address = address
        self.rate = rate
        self.price = price
        self.description = description
        self.images = images
    }
}
