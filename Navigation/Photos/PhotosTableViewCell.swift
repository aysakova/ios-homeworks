//
//  PhotosTableViewCell.swift
//  Navigation
//
//  Created by Aysa Minkova on 2021/08/23.
//  Copyright © 2021 Artem Novichkov. All rights reserved.
//

import UIKit

class PhotosTableViewCell: UITableViewCell {
    
    private lazy var photosLabel: UILabel = {
       let label = UILabel()
        label.text = "Photos"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
        
    }()
    
    private lazy var arrowImageView: UIImageView = {
        let image = UIImageView(image: UIImage(systemName: "arrow.right"))
        image.translatesAutoresizingMaskIntoConstraints = false
        image.tintColor = .black
        return image
    }()
    
    private lazy var photoImageViewOne: UIImageView = {
        
        let photo = UIImageView(image: UIImage(named: "one"))
        photo.backgroundColor = .black
        photo.translatesAutoresizingMaskIntoConstraints = false
        return photo
        
    }()
    
    private lazy var photoImageViewTwo: UIImageView = {
        
        let photo = UIImageView(image: UIImage(named: "two"))
        photo.backgroundColor = .black
        photo.translatesAutoresizingMaskIntoConstraints = false
        return photo
        
    }()
    
    private lazy var photoImageViewThree: UIImageView = {
        
        let photo = UIImageView(image: UIImage(named: "three"))
        photo.backgroundColor = .black
        photo.translatesAutoresizingMaskIntoConstraints = false
        return photo
        
    }()
    
    private lazy var photoImageViewFour: UIImageView = {
        
        let photo = UIImageView(image: UIImage(named: "four"))
        photo.backgroundColor = .black
        photo.translatesAutoresizingMaskIntoConstraints = false
        return photo
        
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupView()
        constraints()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
        constraints()
    }
    
    
    
    private func setupView() {
        contentView.addSubview(photosLabel)
        contentView.addSubview(arrowImageView)
        contentView.addSubview(photoImageViewOne)
        contentView.addSubview(photoImageViewTwo)
        contentView.addSubview(photoImageViewThree)
        contentView.addSubview(photoImageViewFour)
        
        contentView.clipsToBounds = true
        
        let arrayOfPhotos = [photoImageViewOne, photoImageViewTwo, photoImageViewThree, photoImageViewFour]
        arrayOfPhotos.forEach{($0.layer.cornerRadius = 6)}
        arrayOfPhotos.forEach{($0.clipsToBounds = true)}
    }
        
        
        private func constraints() {
    
        let constant = CGFloat(-12)
        let constraints = [
            
            photosLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12),
            photosLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 12),

            
            arrowImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 12),
            arrowImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -12),
            
            photoImageViewOne.leadingAnchor.constraint(equalTo: photosLabel.leadingAnchor),
            photoImageViewOne.topAnchor.constraint(equalTo: photosLabel.bottomAnchor, constant: 12),
            photoImageViewOne.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 0.25, constant: constant),
            photoImageViewOne.heightAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 0.25, constant: constant),
            photoImageViewOne.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -12),
//            
            photoImageViewTwo.leadingAnchor.constraint(equalTo: photoImageViewOne.trailingAnchor, constant: 8),
            photoImageViewTwo.topAnchor.constraint(equalTo: photoImageViewOne.topAnchor),
            photoImageViewTwo.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 0.25, constant: constant),
            photoImageViewTwo.heightAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 0.25, constant: constant),
            photoImageViewTwo.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -12),
//            
            photoImageViewThree.leadingAnchor.constraint(equalTo: photoImageViewTwo.trailingAnchor, constant: 8),
            photoImageViewThree.topAnchor.constraint(equalTo: photoImageViewTwo.topAnchor),
            photoImageViewThree.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 0.25, constant: constant),
            photoImageViewThree.heightAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 0.25, constant: constant),
            photoImageViewThree.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -12),
//            
            photoImageViewFour.leadingAnchor.constraint(equalTo: photoImageViewThree.trailingAnchor, constant: 8),
            photoImageViewFour.topAnchor.constraint(equalTo: photoImageViewThree.topAnchor),
            photoImageViewFour.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 0.25, constant: constant),
            photoImageViewFour.heightAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 0.25, constant: constant),
            photoImageViewFour.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -12),
            
            
        ]
        NSLayoutConstraint.activate(constraints)
    }
}
