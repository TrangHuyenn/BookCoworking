//
//  CardCell.swift
//  Book_Coworking
//
//  Created by Trang Huyền on 9/13/21.
//

import UIKit

class CardCell: UICollectionViewCell {

    @IBOutlet weak var viewShadow: UIView!
    @IBOutlet weak var viewCard: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
//        viewShadow.layer.cornerRadius = 30
//        viewShadow.clipsToBounds = true
//        viewShadow.layer.shadowOpacity = 1
//        viewShadow.layer.shadowRadius = 30
//        viewShadow.layer.shadowPath = UIBezierPath(rect: viewShadow.bounds).cgPath
//        viewShadow.layer.shadowOffset = .zero
//        viewShadow.layer.shouldRasterize = true
//        viewShadow.layer.rasterizationScale = UIScreen.main.scale
        
        viewCard.layer.cornerRadius = 30
        viewCard.clipsToBounds = true
        viewCard.layer.shadowOpacity = 1
        viewCard.layer.shadowRadius = 30
        viewCard.layer.shadowPath = UIBezierPath(rect: viewShadow.bounds).cgPath
        viewCard.layer.shadowOffset = .zero
        viewCard.layer.shouldRasterize = true
       
    }

}
