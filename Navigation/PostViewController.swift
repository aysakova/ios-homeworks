//
//  PostViewController.swift
//  Navigation
//
//  Created by Aysa Minkova on 2021/08/06.
//

import UIKit

class PostViewController: UIViewController {
    
    let postTitle: String
    init(postTitle: String) {
        self.postTitle = postTitle
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .systemGreen
        self.title = postTitle
        
        let button = UIBarButtonItem(title: "Info", style: .plain, target: self, action: #selector(goToInfo))
        self.navigationItem.rightBarButtonItem = button

    }
    
    @objc func goToInfo() {
        let vc = InfoViewController()
        vc.modalPresentationStyle = .formSheet
        self.present(vc, animated: true, completion: nil)
    }

}
