//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by Aysa Minkova on 2021/08/12.
//  Copyright © 2021 Artem Novichkov. All rights reserved.
//

import UIKit

class ProfileHeaderView: UIView {
    
    lazy var avatarImage: UIImageView = {
        let avatarImage = UIImageView()
        avatarImage.image = UIImage(named: "roxy")
        avatarImage.layer.cornerRadius = avatarImage.frame.width / 2
        avatarImage.layer.borderWidth = 3
        avatarImage.layer.masksToBounds = true
        avatarImage.layer.borderColor = UIColor.white.cgColor
       return avatarImage
     }()
    
    lazy var nameLabel: UILabel = {
        let nameLabel = UILabel()
        nameLabel.text = "Badass cat"
        nameLabel.textColor = .black
        nameLabel.font = UIFont.boldSystemFont(ofSize: 18)
        
        return nameLabel
    }()
    
    lazy var statusTextField: UITextField = {
        let statusTextField = UITextField()
        statusTextField.textColor = UIColor.gray
        statusTextField.borderStyle = .none
        statusTextField.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        statusTextField.placeholder = "Write something here..."
        statusTextField.resignFirstResponder()

        return statusTextField
    }()
    
    lazy var showButton: UIButton = {
        let showButton = UIButton()
        showButton.backgroundColor = .systemBlue
        showButton.setTitle("Show status", for: .normal)
        
        showButton.layer.cornerRadius = 14
        showButton.layer.shadowOffset = CGSize(width: 4, height: 4)
        showButton.layer.shadowRadius = 4
        showButton.layer.shadowColor = UIColor.black.cgColor
        showButton.layer.shadowOpacity = 0.7
        showButton.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        return showButton
    }()
    
    override init(frame:CGRect) {
        super.init(frame: frame)
        createSubviews()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        createSubviews()
    }
    
    private func createSubviews() {
        addSubview(avatarImage)
        addSubview(nameLabel)
        addSubview(statusTextField)
        addSubview(showButton)
        setupLayout()
    }
    
    private func setupLayout() {
        
        avatarImage.translatesAutoresizingMaskIntoConstraints = false
        
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        statusTextField.translatesAutoresizingMaskIntoConstraints = false
        
        showButton.translatesAutoresizingMaskIntoConstraints = false

        self.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            avatarImage.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 16),
            avatarImage.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            avatarImage.widthAnchor.constraint(equalToConstant: 120),
            avatarImage.heightAnchor.constraint(equalToConstant: 120),
            
            nameLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 27),
            nameLabel.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 150),

            statusTextField.bottomAnchor.constraint(equalTo: showButton.topAnchor, constant: -34),
            statusTextField.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 150),
            
            showButton.heightAnchor.constraint(equalToConstant: 50),
            showButton.topAnchor.constraint(equalTo: avatarImage.bottomAnchor, constant: 16),
            showButton.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            showButton.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -16)
         ])
    }
    
    @objc func buttonPressed() {
        print(self.statusTextField.text ?? "no input")
        statusTextField.resignFirstResponder()
    }
        
}



