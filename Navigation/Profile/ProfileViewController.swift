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
        print(type(of: self), #function)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        print(type(of: self), #function)
    }
        
    override func viewDidLoad() {
        self.view.backgroundColor = .lightGray
            view.addSubview(headerView)
    }


    
    override func viewWillLayoutSubviews() {
        headerView.frame = view.frame
        setupLayout()

    }
    
    private func setupLayout() {
        let avatar = headerView.avatarImage
        avatar.layer.cornerRadius = avatar.frame.width / 2
        avatar.translatesAutoresizingMaskIntoConstraints = false
        
        let label = headerView.nameLabel
        label.translatesAutoresizingMaskIntoConstraints = false
        
        let text = headerView.statusTextField
        text.translatesAutoresizingMaskIntoConstraints = false
        
        let button = headerView.showButton
        button.translatesAutoresizingMaskIntoConstraints = false
        
        let constraint = view.safeAreaLayoutGuide
        
        NSLayoutConstraint.activate([
            avatar.topAnchor.constraint(equalTo: constraint.topAnchor, constant: 16),
            avatar.leadingAnchor.constraint(equalTo: constraint.leadingAnchor, constant: 16),
            avatar.widthAnchor.constraint(equalToConstant: 120),
            avatar.heightAnchor.constraint(equalToConstant: 120),
            
            label.widthAnchor.constraint(equalToConstant: 200),
            label.heightAnchor.constraint(equalToConstant: 30),
            label.topAnchor.constraint(equalTo: constraint.topAnchor, constant: 27),
            label.leadingAnchor.constraint(equalTo: constraint.leadingAnchor, constant: 150),
            label.trailingAnchor.constraint(equalTo: constraint.trailingAnchor, constant: 16),

            text.bottomAnchor.constraint(equalTo: button.topAnchor, constant: -34),
            text.leadingAnchor.constraint(equalTo: constraint.leadingAnchor, constant: 150),
            text.trailingAnchor.constraint(equalTo: constraint.trailingAnchor, constant: 16),
            
            button.heightAnchor.constraint(equalToConstant: 50),
            button.widthAnchor.constraint(equalToConstant: button.frame.width),
            button.topAnchor.constraint(equalTo: avatar.bottomAnchor, constant: 16),
            button.leadingAnchor.constraint(equalTo: constraint.leadingAnchor, constant: 16),
            button.trailingAnchor.constraint(equalTo: constraint.trailingAnchor, constant: -16)
         ])
    }
}
