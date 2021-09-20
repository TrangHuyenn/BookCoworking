//
//  HomeViewController.swift
//  Book_Coworking
//
//  Created by Trang Huyền on 9/3/21.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var cardCollection: UICollectionView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var imageAvata: UIImageView!
    @IBOutlet weak var searchView: UISearchBar!
    @IBOutlet weak var collectionViewSlideShow: UICollectionView!
    
    let imageSlideShows = ["slide1", "slide2", "slide3","slide4"]
    var scrollImageTimer: Timer!
    var count = 0
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        navigationController?.isNavigationBarHidden = true
        setUpViewHeader()
        config()
    }
    
    func setUpViewHeader() {
        imageAvata.layer.cornerRadius = imageAvata.frame.height/2
    }
    
    func config() {
        setUpCollectionView()
    }
    
    //MARK: Slide Show
    
    func setUpCollectionView() {
        
        collectionViewSlideShow.delegate = self
        collectionViewSlideShow.dataSource = self
        collectionViewSlideShow.isPagingEnabled = false
        
        cardCollection.delegate = self
        cardCollection.dataSource = self
        
        collectionViewSlideShow.register(UINib(nibName: "SlideCell", bundle: nil), forCellWithReuseIdentifier: "SlideCell")
        cardCollection.register(UINib(nibName: "CardCell", bundle: nil), forCellWithReuseIdentifier: "CardCell")
        
        setPageControlImage()
        scrollImageTimer = Timer.scheduledTimer(timeInterval: 3, target: self, selector: #selector(setTimer), userInfo: nil, repeats: true)
    }
    
    func setPageControlImage() {
        pageControl.numberOfPages = imageSlideShows.count
        pageControl.currentPage = 0
    }
    
    @objc func setTimer() {
        
        if count < imageSlideShows.count {
            let index = IndexPath.init(item: count, section: 0)
            collectionViewSlideShow.scrollToItem(at: index, at: .centeredHorizontally, animated: true)
            pageControl.currentPage = count
            count += 1
        }
        else {
            count = 0
            let index = IndexPath.init(item: count, section: 0)
            collectionViewSlideShow.scrollToItem(at: index, at: .centeredHorizontally, animated: true)
            pageControl.currentPage = count
        }
    }
    
    //MARK: Card
}

//MARK: Extension

extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == collectionViewSlideShow {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SlideCell", for: indexPath) as? SlideCell
            cell?.imgSlide.image = UIImage(named: "\(imageSlideShows[indexPath.row])")
            return cell!
        }
        else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CardCell", for: indexPath) as? CardCell
            return cell!
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == collectionViewSlideShow {
            return imageSlideShows.count
        }
        else {
            return 10
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == cardCollection {
            let vc = DetailCoworkingViewController()
            navigationController?.pushViewController(vc, animated: true)
        }
    }
    
}

extension HomeViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == collectionViewSlideShow {
            return CGSize(width: collectionViewSlideShow.frame.size.width, height: collectionViewSlideShow.frame.size.height)
        }
        else {
            return CGSize(width: cardCollection.frame.size.width, height: cardCollection.frame.size.height)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        if collectionView ==  cardCollection {
            return 20
        }
        else {
            return 0
        }
    }
}
