//
//  BookViewController.swift
//  Book_Coworking
//
//  Created by Trang Huyền on 9/3/21.
//

import UIKit

class BookViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var dateBook: Date = Date()
    var timeBook: Date = Date()
    
    let button = UIButton().button(text: "Pay")
    let listcell: [String] = ["RoomTypeCell", "SelectTimeCell", "EnterInforBookingCell", "AddressCell"]
    let listIndexCell: [TypeCell] = [.roomTypeCell, .dateCell, .enterInforBookingCell, .addressCell]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Booking"
        view.addSubview(button)
        initTableView()
        setUpLayout()
    }
    
    func initTableView() {
        tableView.separatorColor = UIColor.clear
        for item in listcell {
            tableView.register(UINib(nibName: item, bundle: nil), forCellReuseIdentifier: item)
        }
        tableView.delegate = self
        tableView.dataSource = self
        button.addTarget(self, action: #selector(didTapPayButton), for: .touchUpInside)
    }
    
    func setUpLayout(){
        button.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -10).isActive = true
        button.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        button.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        button.heightAnchor.constraint(equalToConstant: 60).isActive = true
    }
    
}

enum TypeCell: Int {
    case none = -1
    case roomTypeCell = 0
    case dateCell = 1
    case enterInforBookingCell = 2
    case addressCell = 3
}

extension BookViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listcell.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "RoomTypeCell", for: indexPath) as? RoomTypeCell
            return cell!
        }
        else if indexPath.row == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "SelectTimeCell", for: indexPath) as? SelectTimeCell
            cell?.binData(timeDate: dateBook, timeHour: timeBook)
            cell?.btnsetDate.addTarget(self, action: #selector(onSelectDate), for: .touchUpInside)

            return cell!
        }
        else if indexPath.row == 2 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "EnterInforBookingCell", for: indexPath) as? EnterInforBookingCell
            return cell!
        }
        else if indexPath.row == 3 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "AddressCell", for: indexPath) as? AddressCell
            return cell!
        }
        
        return UITableViewCell()
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 80
        }
        else if indexPath.row == 1 {
            return 85
        }
        else if indexPath.row == 2 {
            return 250
        }
        else {
            return 40
        }
    }
    
    @objc func onSelectDate(_ isStart: Bool) {
        let vc = PopupSetDateTime()
        vc.onSelectDate = { date in
            self.dateBook = date
            self.tableView.reloadData()
        }
        self.present(vc, animated: true, completion: nil)
    }
    
    @objc func didTapPayButton() {
        let vc = PaymentConfirmController()
        navigationController?.pushViewController(vc, animated: true)
    }

    
}

