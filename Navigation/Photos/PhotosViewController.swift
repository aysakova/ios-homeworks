//
//  PhotosViewController.swift
//  Navigation
//
//  Created by Aysa Minkova on 2021/08/23.
//  Copyright © 2021 Artem Novichkov. All rights reserved.
//

import UIKit

class PhotosViewController: UIViewController {

    private lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.backgroundColor = .white
        return collectionView
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(collectionView)
        self.navigationController?.isNavigationBarHidden = false
        self.view.backgroundColor = .systemGray6
    }


    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        collectionView.frame = CGRect(x: view.safeAreaInsets.left + 8,
                                      y: view.safeAreaInsets.top + 8 + (navigationController?.navigationBar.frame.height)!,
                                      width: view.frame.width - 16,
                                      height: view.frame.height - 16 - (navigationController?.navigationBar.frame.height)!)
    }
}
