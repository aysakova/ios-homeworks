//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Aysa Minkova on 2021/08/09.
//  Copyright © 2021 Artem Novichkov. All rights reserved.
//

import Foundation
import UIKit

class ProfileVIewController: UIViewController {
    
    let headerView = ProfileHeaderView()
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
        
    override func viewDidLoad() {
        self.view.backgroundColor = .lightGray
            view.addSubview(headerView)
    }

    override func viewWillLayoutSubviews() {
        headerView.avatarImage.layer.cornerRadius = headerView.avatarImage.frame.width / 2
        headerView.frame = self.view.frame
        
        NSLayoutConstraint.activate([
            headerView.widthAnchor.constraint(equalTo: self.view.widthAnchor),
            headerView.heightAnchor.constraint(equalTo: self.view.heightAnchor)
        ])
    }
    
}
