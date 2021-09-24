//
//  SelectTimeCell.swift
//  Book_Coworking
//
//  Created by Trang Huyền on 9/16/21.
//

import UIKit

class SelectTimeCell: UITableViewCell {

    @IBOutlet weak var timeStart: UIDatePicker!
    @IBOutlet weak var timeEnd: UIDatePicker!
    
    @IBOutlet weak var btnsetDate: UIButton!
    @IBOutlet weak var tfSetDate: UITextField!
    
    var selectDate: ((Bool) -> Void)?
    let formatter = DateFormatter()
    let timeFormatter = DateFormatter()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        tfSetDate.setIcon(UIImage(systemName: "chevron.down") ?? UIImage(), 20)
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
