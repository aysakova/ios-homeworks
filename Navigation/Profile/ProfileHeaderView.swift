//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by Aysa Minkova on 2021/08/12.
//  Copyright © 2021 Artem Novichkov. All rights reserved.
//

import UIKit

class ProfileHeaderView: UIView {
    
    override init(frame:CGRect) {
        super.init(frame: frame)
        addSubview(stackViewAvatarNameStatus)
        addSubview(setStatusButton)
        setupConstraunts()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        addSubview(stackViewAvatarNameStatus)
        addSubview(setStatusButton)
        setupConstraunts()
    }

    lazy var stackViewAvatarNameStatus: UIStackView = {
        let stackViewAvatarNameStatus = UIStackView(arrangedSubviews: [avatarImage, stackViewNameStatus])
        stackViewAvatarNameStatus.axis = .horizontal
        stackViewAvatarNameStatus.translatesAutoresizingMaskIntoConstraints = false
        return stackViewAvatarNameStatus
    }()
    
    lazy var stackViewNameStatus: UIStackView = {
        let stackViewNameStatus = UIStackView(arrangedSubviews: [fullNameLabel, statusLabel, statusTextField])
        stackViewNameStatus.axis = .vertical
        stackViewNameStatus.spacing = 16
        stackViewNameStatus.translatesAutoresizingMaskIntoConstraints = false
        return stackViewNameStatus
    }()

    
    lazy var avatarImage: UIImageView = {
        let avatarImage = UIImageView()
        avatarImage.image = UIImage(named: "roxy")
        avatarImage.layer.cornerRadius = avatarImage.frame.width / 2
        avatarImage.layer.borderWidth = 3
        avatarImage.layer.masksToBounds = true
        avatarImage.layer.borderColor = UIColor.white.cgColor
        avatarImage.translatesAutoresizingMaskIntoConstraints = false
       return avatarImage
     }()
    
    
    lazy var fullNameLabel: UILabel = {
        let fullNameLabel = UILabel()
        fullNameLabel.text = "Badass cat"
        fullNameLabel.textColor = .black
        fullNameLabel.font = UIFont.boldSystemFont(ofSize: 18)
        fullNameLabel.translatesAutoresizingMaskIntoConstraints = false
        return fullNameLabel
    }()
    
    lazy var statusLabel: UILabel = {
        let statusLabel = UILabel()
        statusLabel.textColor = UIColor.gray
        statusLabel.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        statusLabel.translatesAutoresizingMaskIntoConstraints = false
        return statusLabel
    }()
    
    lazy var statusTextField: UITextField = {
        let statusTextField = UITextField()
        statusTextField.textColor = UIColor.gray
        statusTextField.borderStyle = .none
        statusTextField.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        statusTextField.placeholder = "Write something here..."
        statusTextField.translatesAutoresizingMaskIntoConstraints = false
        statusTextField.addTarget(self, action: #selector(statusTextChanged), for: .editingChanged)
        return statusTextField
    }()
    
    lazy var setStatusButton: UIButton = {
        let setStatusButton = UIButton()
        setStatusButton.backgroundColor = .systemBlue
        setStatusButton.setTitle("Show status", for: .normal)
        
        setStatusButton.layer.cornerRadius = 14
        setStatusButton.layer.shadowOffset = CGSize(width: 4, height: 4)
        setStatusButton.layer.shadowRadius = 4
        setStatusButton.layer.shadowColor = UIColor.black.cgColor
        setStatusButton.layer.shadowOpacity = 0.7
        setStatusButton.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        setStatusButton.translatesAutoresizingMaskIntoConstraints = false
        return setStatusButton
    }()
    
    private func setupConstraunts() {[
        avatarImage.widthAnchor.constraint(equalToConstant: 120),
        avatarImage.heightAnchor.constraint(equalToConstant: 120),
        fullNameLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: (27 - 16)),
     //   fullNameLabel.heightAnchor.constraint(equalToConstant: fullNameLabel.frame.height),
        fullNameLabel.leadingAnchor.constraint(equalTo: avatarImage.trailingAnchor, constant: 16),
        
        stackViewAvatarNameStatus.topAnchor.constraint(equalTo: self.topAnchor, constant: 16),
        stackViewAvatarNameStatus.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
//        stackViewNameStatus.bottomAnchor.constraint(equalTo: setStatusButton.topAnchor, constant: -16),
        setStatusButton.topAnchor.constraint(equalTo: stackViewAvatarNameStatus.bottomAnchor, constant: 16),
        setStatusButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
        setStatusButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
        setStatusButton.heightAnchor.constraint(equalToConstant: 50),
        stackViewNameStatus.bottomAnchor.constraint(equalTo: stackViewAvatarNameStatus.bottomAnchor, constant: (34 - 16)),

    ].forEach{($0.isActive = true)
    }
}
    @objc func buttonPressed() {
        statusLabel.text = statusText
        statusTextField.resignFirstResponder()
    }
    
    private var statusText: String = ""
    
    @objc func statusTextChanged() {
        if let userInput = statusTextField.text {
            statusText = userInput
            
        }
        
    }
    
}



