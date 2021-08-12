//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by Aysa Minkova on 2021/08/12.
//  Copyright © 2021 Artem Novichkov. All rights reserved.
//

import UIKit

class ProfileHeaderView: UIView {
    
    @IBOutlet weak var avatarImage: UIImageView! {
        didSet {
            avatarImage.layer.cornerRadius = avatarImage.frame.width / 2
            avatarImage.layer.borderWidth = 3
            avatarImage.layer.borderColor = UIColor.white.cgColor
        }
    }
    @IBOutlet weak var nameLabel: UILabel! {
        didSet {
            nameLabel.font = UIFont.boldSystemFont(ofSize: 18)
        }
    }
    @IBOutlet weak var statusTextField: UITextField! {
        didSet {
            statusTextField.textColor = UIColor.gray
            statusTextField.borderStyle = .none
            statusTextField.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        }
    }
    @IBOutlet weak var showButton: UIButton! {
        didSet {
            showButton.backgroundColor = .systemBlue
            showButton.layer.cornerRadius = 14
            showButton.layer.shadowOffset = CGSize(width: 4, height: 4)
            showButton.layer.shadowRadius = 4
            showButton.layer.shadowColor = UIColor.black.cgColor
            showButton.layer.shadowOpacity = 0.7
            showButton.addTarget(self, action: #selector(handleTap), for: .touchUpInside)

        }
    }
    @objc func handleTap() {
        print(self.statusTextField.text ?? "no input")
        }
    
    
    
}



