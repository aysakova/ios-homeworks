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
    let newButton = UIButton()
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
<<<<<<< HEAD

=======
>>>>>>> c0bf3a594808f356cb5e2a6d8838fcaaa7cef329
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
<<<<<<< HEAD

=======
>>>>>>> c0bf3a594808f356cb5e2a6d8838fcaaa7cef329
    }
        
    override func viewDidLoad() {
        self.view.backgroundColor = .lightGray
<<<<<<< HEAD
        view.addSubview(headerView)
        view.addSubview(newButton)
        headerView.translatesAutoresizingMaskIntoConstraints = false
        
        newButton.translatesAutoresizingMaskIntoConstraints = false
        newButton.backgroundColor = .systemRed
        newButton.setTitle("New button", for: .normal)
        
        headerView.avatarImage.layer.cornerRadius = 60
        
        newButton.backgroundColor = .systemRed
        newButton.setTitle("New button", for: .normal)
        
        headerView.avatarImage.layer.cornerRadius = 60
        
        NSLayoutConstraint.activate([
            headerView.widthAnchor.constraint(equalTo: self.view.widthAnchor),
            headerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            headerView.heightAnchor.constraint(equalToConstant: 220),
            newButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            newButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            newButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
=======
            view.addSubview(headerView)
    }

    override func viewWillLayoutSubviews() {
        headerView.avatarImage.layer.cornerRadius = headerView.avatarImage.frame.width / 2
        headerView.frame = self.view.frame
        
        NSLayoutConstraint.activate([
            headerView.widthAnchor.constraint(equalTo: self.view.widthAnchor),
            headerView.heightAnchor.constraint(equalTo: self.view.heightAnchor)
>>>>>>> c0bf3a594808f356cb5e2a6d8838fcaaa7cef329
        ])
    }
    
}
