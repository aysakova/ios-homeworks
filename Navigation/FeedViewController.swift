//
//  ViewController.swift
//  Navigation
//
//  Created by Artem Novichkov on 12.09.2020.
//  Copyright © 2020 Artem Novichkov. All rights reserved.
//

import UIKit

final class FeedViewController: UIViewController {
    
    let post: Post = Post(title: "Пост")
//
//    lazy var buttonsStackView: UIStackView = {
//        let buttonsStackView = UIStackView(arrangedSubviews: [firstButton, secondButton])
//        buttonsStackView.spacing = 10
//        buttonsStackView.axis = .vertical
//        buttonsStackView.alignment = .center
//        return buttonsStackView
//    }()
//
//    lazy var firstButton: UIButton = {
//        let firstButton = UIButton(frame: CGRect(origin: .zero, size: CGSize(width: 30, height: 10)))
//        firstButton.backgroundColor = .darkGray
//        return firstButton
//    }()
//
//    lazy var secondButton: UIButton = {
//        let secondButton =  UIButton(frame: CGRect(origin: .zero, size: CGSize(width: 30, height: 10)))
//        secondButton.backgroundColor = .lightGray
//        return secondButton
//    }()
//
//    private func setConstraints() {
//        self.view.translatesAutoresizingMaskIntoConstraints = false
//        buttonsStackView.translatesAutoresizingMaskIntoConstraints = false
//        NSLayoutConstraint.activate([
//            buttonsStackView.heightAnchor.constraint(equalToConstant: 50),
//            buttonsStackView.widthAnchor.constraint(equalToConstant: 50),
//            buttonsStackView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
//            buttonsStackView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            
//            firstButton.centerXAnchor.constraint(equalTo: buttonsStackView.centerXAnchor),
//            firstButton.centerYAnchor.constraint(equalTo: buttonsStackView.centerYAnchor),
//            secondButton.centerXAnchor.constraint(equalTo: buttonsStackView.centerXAnchor),
////            secondButton.centerYAnchor.constraint(equalTo: buttonsStackView.centerYAnchor),
//        ])
//    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)

    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)

    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()

//        setConstraints()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "post" else {
            return
        }
        guard let postViewController = segue.destination as? PostViewController else {
            return
        }
        postViewController.post = post
    }
}
