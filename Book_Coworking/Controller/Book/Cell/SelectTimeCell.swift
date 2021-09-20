//
//  SelectTimeCell.swift
//  Book_Coworking
//
//  Created by Trang Huyền on 9/16/21.
//

import UIKit

class SelectTimeCell: UITableViewCell {

    
    @IBOutlet weak var btnSetTime: UIButton!
    @IBOutlet weak var btnsetDate: UIButton!
    @IBOutlet weak var tfSetTime: UITextField!
    @IBOutlet weak var tfSetDate: UITextField!
    
    var selectDate: ((Bool) -> Void)?
    let formatter = DateFormatter()
    let timeFormatter = DateFormatter()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        tfSetDate.setIcon(UIImage(systemName: "chevron.down") ?? UIImage(), 20)
//        tfSetTime.setIcon(UIImage(systemName: "chevron.down") ?? UIImage(), 20)
        formatter.dateFormat = "dd/MM/yyyy"
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func binData(timeDate: Date, timeHour: Date) {
        tfSetDate.text = formatter.string(from: timeDate)
    }
    
}
