//
//  VoucherController.swift
//  Book_Coworking
//
//  Created by Trang Huyền on 9/23/21.
//

import UIKit

class VoucherController: UIViewController {

    @IBOutlet weak var tableVoucher: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTable()
        
    }
    
    func configTable(){
        tableVoucher.delegate = self
        tableVoucher.dataSource = self
        tableVoucher.register(UINib(nibName: "VoucherCell", bundle: nil), forCellReuseIdentifier: "VoucherCell")
    }

}

extension VoucherController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "VoucherCell", for: indexPath) as? VoucherCell
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath) as? VoucherCell
        let vc = PaymentConfirmController()
        vc.promotionCode = cell?.lbCodePromotion.text! ?? ""
        orderBook.promo = cell?.lbCodePromotion.text! ?? ""
        navigationController?.pushViewController(vc, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 130
    }

}
