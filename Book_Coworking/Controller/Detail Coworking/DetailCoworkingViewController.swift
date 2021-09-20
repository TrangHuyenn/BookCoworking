//
//  DetailCoworkingViewController.swift
//  Book_Coworking
//
//  Created by Trang Huyền on 9/14/21.
//

import UIKit

class DetailCoworkingViewController: UIViewController {
    
    @IBOutlet weak var imageColletionDetail: UICollectionView!
    
    var imagesDetail = ["img_Toong", "img_Toong","img_Toong","img_Toong"]
    
    let button = UIButton().button(text: "Book Now")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configColletionView()
        view.addSubview(button)
        tabBarController?.tabBar.isHidden = true
        setupLayout()
        
        button.addTarget(self, action: #selector(didTapButtonBook), for: .touchUpInside)
        navigationController?.isNavigationBarHidden = false
    }
    
    func configColletionView() {
        imageColletionDetail.delegate = self
        imageColletionDetail.dataSource = self
        imageColletionDetail.register(UINib(nibName: "ImageCollectionCell", bundle: nil), forCellWithReuseIdentifier: "ImageCollectionCell")
    }
    
    func setupLayout(){
        button.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -10).isActive = true
        button.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        button.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        button.heightAnchor.constraint(equalToConstant: 60).isActive = true
    }
    
    @objc func didTapButtonBook(){
        let vc = BookViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    
}

extension DetailCoworkingViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imagesDetail.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ImageCollectionCell", for: indexPath) as? ImageCollectionCell
        cell?.imgSlide.image = UIImage(named: "\(imagesDetail[indexPath.row])")
        return cell!
    }
}

extension DetailCoworkingViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: imageColletionDetail.frame.size.width*0.6, height: imageColletionDetail.frame.size.height)
    }
    
    
}
