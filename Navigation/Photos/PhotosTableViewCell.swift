//
//  PhotosTableViewCell.swift
//  Navigation
//
//  Created by Aysa Minkova on 2021/08/23.
//  Copyright © 2021 Artem Novichkov. All rights reserved.
//

import UIKit

class PhotosTableViewCell: UITableViewCell {
    
    var photo: String? {
        didSet {
            for index in 0 ... 3 {
                photo = Photos.photos[index]
            }
        }
    }
    
    var photosLabel: UILabel = {
       let label = UILabel()
        label.text = "Photos"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
        
    }()
    
    var arrowImageView: UIImageView = {
        let image = UIImageView(image: UIImage(systemName: "arrow.right"))
        image.translatesAutoresizingMaskIntoConstraints = false
        image.tintColor = .black
        return image
    }()
    
    var photoImageViewOne: UIImageView = {
        
        let photo = UIImageView(image: UIImage(named: "one"))
        photo.backgroundColor = .black
        photo.translatesAutoresizingMaskIntoConstraints = false
        return photo
        
    }()
    
    var photoImageViewTwo: UIImageView = {
        
        let photo = UIImageView(image: UIImage(named: "two"))
        photo.backgroundColor = .black
        photo.translatesAutoresizingMaskIntoConstraints = false
        return photo
        
    }()
    
    var photoImageViewThree: UIImageView = {
        
        let photo = UIImageView(image: UIImage(named: "three"))
        photo.backgroundColor = .black
        photo.translatesAutoresizingMaskIntoConstraints = false
        return photo
        
    }()
    
    var photoImageViewFour: UIImageView = {
        
        let photo = UIImageView(image: UIImage(named: "four"))
        photo.backgroundColor = .black
        photo.translatesAutoresizingMaskIntoConstraints = false
        return photo
        
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }
    
    private func setupView() {
        contentView.addSubview(photoImageViewOne)
        contentView.addSubview(photoImageViewTwo)
        contentView.addSubview(photoImageViewThree)
        contentView.addSubview(photoImageViewFour)
        contentView.addSubview(photosLabel)
        contentView.addSubview(arrowImageView)
        
        contentView.translatesAutoresizingMaskIntoConstraints = false
        
        
        let arrayOfPhotos = [photoImageViewOne, photoImageViewTwo, photoImageViewThree, photoImageViewFour]
        arrayOfPhotos.forEach{($0.layer.cornerRadius = 6)}
        arrayOfPhotos.forEach{($0.clipsToBounds = true)}
        
        let widthConstraint = contentView.frame.width / 3
        
        let constraints = [
            
            photosLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12),
            photosLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 12),
            
            arrowImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 12),
            arrowImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -12),
            
            photoImageViewOne.widthAnchor.constraint(equalToConstant: (widthConstraint)),
            photoImageViewOne.heightAnchor.constraint(equalTo: photoImageViewOne.widthAnchor),
            photoImageViewOne.leadingAnchor.constraint(equalTo: contentView.leadingAnchor,constant: 12),
            photoImageViewOne.topAnchor.constraint(equalTo: photosLabel.bottomAnchor, constant: 12),
            photoImageViewOne.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -12),
            
            photoImageViewTwo.widthAnchor.constraint(equalToConstant: (widthConstraint)),
            photoImageViewTwo.heightAnchor.constraint(equalTo: photoImageViewOne.widthAnchor),
            photoImageViewTwo.leadingAnchor.constraint(equalTo: photoImageViewOne.trailingAnchor, constant: 8),
            photoImageViewTwo.topAnchor.constraint(equalTo: photosLabel.bottomAnchor, constant: 12),
            photoImageViewTwo.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -12),
            
            photoImageViewThree.widthAnchor.constraint(equalToConstant: (widthConstraint)),
            photoImageViewThree.heightAnchor.constraint(equalTo: photoImageViewOne.widthAnchor),
            photoImageViewThree.leadingAnchor.constraint(equalTo: photoImageViewTwo.trailingAnchor, constant: 8),
            photoImageViewThree.topAnchor.constraint(equalTo: photosLabel.bottomAnchor, constant: 12),
            photoImageViewThree.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -12),
            
            photoImageViewFour.widthAnchor.constraint(equalToConstant: (widthConstraint)),
            photoImageViewFour.heightAnchor.constraint(equalTo: photoImageViewOne.widthAnchor),
            photoImageViewFour.leadingAnchor.constraint(equalTo: photoImageViewThree.trailingAnchor, constant: 8),
            photoImageViewFour.topAnchor.constraint(equalTo: photosLabel.bottomAnchor, constant: 12),
            photoImageViewFour.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -12),
            photoImageViewFour.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -12),
            
        
        
        ]
        NSLayoutConstraint.activate(constraints)
    }

}
