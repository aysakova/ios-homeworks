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
        addSubview(avatarImage)
        addSubview(stackViewNameStatus)
        addSubview(setStatusButton)
        setupConstraunts()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        addSubview(avatarImage)
        addSubview(stackViewNameStatus)
        addSubview(setStatusButton)
        setupConstraunts()
    }

//    lazy var stackViewAvatarNameStatus: UIStackView = {
//        let stackViewAvatarNameStatus = UIStackView(arrangedSubviews: [avatarImage, stackViewNameStatus])
//        stackViewAvatarNameStatus.axis = .horizontal
//        stackViewAvatarNameStatus.translatesAutoresizingMaskIntoConstraints = false
//        stackViewAvatarNameStatus.spacing = 16
//        return stackViewAvatarNameStatus
//    }()
    
    lazy var stackViewNameStatus: UIStackView = {
        let stackViewNameStatus = UIStackView(arrangedSubviews: [fullNameLabel, statusLabel, statusTextField])
        stackViewNameStatus.axis = .vertical
//        stackViewNameStatus.spacing =
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
    
<<<<<<< HEAD
    
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
=======
    lazy var nameLabel: UILabel = {
        let nameLabel = UILabel()
        nameLabel.text = "Badass cat"
        nameLabel.textColor = .black
        nameLabel.font = UIFont.boldSystemFont(ofSize: 18)
        
        return nameLabel
>>>>>>> c0bf3a594808f356cb5e2a6d8838fcaaa7cef329
    }()
    
    lazy var statusTextField: UITextField = {
        let statusTextField = UITextField()
        statusTextField.textColor = .black
        statusTextField.backgroundColor = .white
        statusTextField.layer.borderColor = UIColor.black.cgColor
        statusTextField.layer.borderWidth = 1
        statusTextField.layer.cornerRadius = 14
        statusTextField.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        statusTextField.placeholder = "Write something here..."
<<<<<<< HEAD
        statusTextField.leftView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 10, height: 40))
        statusTextField.leftViewMode = .always
        statusTextField.translatesAutoresizingMaskIntoConstraints = false
        statusTextField.addTarget(self, action: #selector(statusTextChanged), for: .editingChanged)
=======
        statusTextField.resignFirstResponder()

>>>>>>> c0bf3a594808f356cb5e2a6d8838fcaaa7cef329
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
        statusLabel.heightAnchor.constraint(equalToConstant: 30),
        statusTextField.heightAnchor.constraint(equalToConstant: 40),
        statusTextField.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -16),
        avatarImage.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 16),
        avatarImage.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 16),
        
        stackViewNameStatus.leadingAnchor.constraint(equalTo: avatarImage.trailingAnchor, constant: 16),
        stackViewNameStatus.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 27),
        stackViewNameStatus.bottomAnchor.constraint(equalTo: setStatusButton.topAnchor, constant: -34),
        setStatusButton.topAnchor.constraint(equalTo: avatarImage.bottomAnchor, constant: 30),
        setStatusButton.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 16),
        setStatusButton.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -16),
        setStatusButton.heightAnchor.constraint(equalToConstant: 50),
        setStatusButton.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 16),
        setStatusButton.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -16),
        setStatusButton.heightAnchor.constraint(equalToConstant: 50),
    ].forEach{($0.isActive = true)
    }
}
    @objc func buttonPressed() {
        statusLabel.text = statusText
        statusTextField.resignFirstResponder()
    }
    
<<<<<<< HEAD
    private var statusText: String = ""
    
    @objc func statusTextChanged() {
        if let userInput = statusTextField.text {
            statusText = userInput
            
        }
        
    }
    
=======
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
        
>>>>>>> c0bf3a594808f356cb5e2a6d8838fcaaa7cef329
}



