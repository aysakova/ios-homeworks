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
        navigationController?.isNavigationBarHidden = false
        navigationItem.title = "Photo Gallery"
        self.view.backgroundColor = .systemGray6
        
        collectionView.register(PhotosCollectionViewCell.self, forCellWithReuseIdentifier: String(describing: PhotosTableViewCell.self))
    }


    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        collectionView.frame = CGRect(x: view.safeAreaInsets.left + 8,
                                      y: view.safeAreaInsets.top + 8,
                                      width: view.frame.width - 16,
                                      height: view.frame.height - 16)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        navigationController?.navigationBar.isHidden = true
    }
}

extension PhotosCollectionViewCell: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = PhotosCollectionViewCell()
        return cell
    }
    
    
}

extension PhotosCollectionViewCell: UICollectionViewDelegateFlowLayout {
    
}
