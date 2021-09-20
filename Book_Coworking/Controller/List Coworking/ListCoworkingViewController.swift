//
//  ListCoworkingViewController.swift
//  Book_Coworking
//
//  Created by Trang Huyền on 9/3/21.
//

import UIKit

class ListCoworkingViewController: UIViewController {
    
    private var searchView: UISearchBar = {
        let search = UISearchBar()
        search.translatesAutoresizingMaskIntoConstraints = false
        search.layer.borderWidth = 1
        search.layer.borderColor = #colorLiteral(red: 0.8745098039, green: 0.6156862745, blue: 0.3803921569, alpha: 1)
        search.layer.cornerRadius = 20
        search.searchBarStyle = .default
        search.backgroundImage = UIImage()
        search.searchTextField.backgroundColor = .clear
        return search
    }()

    private var tableView: UITableView = {
        let table = UITableView()
        table.translatesAutoresizingMaskIntoConstraints = false
        return table
    }()
    
    var datas: [Coworking] = mockupData
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.isNavigationBarHidden = true
        view.addSubview(searchView)
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "ListCell", bundle: nil), forCellReuseIdentifier: "ListCell")
        setUpLayout()
    }
    // MARK: set up layout
    
    func setUpLayout() {
        searchView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
        searchView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        searchView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        searchView.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        tableView.topAnchor.constraint(equalTo: searchView.bottomAnchor, constant: 10).isActive = true
        tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
    }
    
}

//MARK: extension UIViewController

extension ListCoworkingViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datas.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ListCell", for: indexPath) as! ListCell
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = DetailCoworkingViewController()
        vc.modalPresentationStyle = .fullScreen
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}
