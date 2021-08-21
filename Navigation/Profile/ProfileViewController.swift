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
    
    let myTableView = UITableView(frame: .zero, style: .plain)
    let cellID = "cellID"
    
    override func viewDidLoad() {
        setupTableView()
        myTableView.dataSource = self
        myTableView.register(PostTableViewCell.self, forCellReuseIdentifier: cellID)
        myTableView.delegate = self
    }
    
    override func viewDidLayoutSubviews() {
        super .viewDidLayoutSubviews()
    }
}





extension ProfileVIewController {
    func setupTableView() {
        view.addSubview(myTableView)
        myTableView.translatesAutoresizingMaskIntoConstraints = false
        myTableView.frame = view.frame
        view.backgroundColor = .systemGray6
        
        
        NSLayoutConstraint.activate([
            myTableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            myTableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            myTableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            myTableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
        ])
    }
}







extension ProfileVIewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Storage.arrayOfPosts.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as! PostTableViewCell
        cell.post = Storage.arrayOfPosts[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = ProfileHeaderView()
        headerView.avatarImage.layer.cornerRadius = headerView.avatarImage.frame.width / 2
        return headerView
    }
}

extension ProfileVIewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
