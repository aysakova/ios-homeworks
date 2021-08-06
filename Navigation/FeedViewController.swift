//
//  FeedViewController.swift
//  Navigation
//
//  Created by Aysa Minkova on 2021/08/06.
//

import UIKit

class FeedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let goToPostButton = UIButton(frame: CGRect(x: 100, y: 300, width: 200, height: 40))
        goToPostButton.setTitle("Go to post", for: .normal)
        goToPostButton.backgroundColor = .gray
        goToPostButton.addTarget(self, action: #selector(goToPost), for: .touchUpInside)
       
        view.addSubview(goToPostButton)
    }
    
    @objc func goToPost() {
        let vc = PostViewController(postTitle: post.title)
        self.navigationController?.pushViewController(vc, animated: true)
    }

    let post = Post(title: "New post")
}
