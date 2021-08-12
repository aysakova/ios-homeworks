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
    
    let headerView = ProfileHeaderView()
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        print(type(of: self), #function)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        print(type(of: self), #function)
    }
        
    override func viewDidLoad() {
        self.view.backgroundColor = .lightGray
        if let headerView = Bundle.main.loadNibNamed("ProfileHeaderView", owner: nil, options: nil)?.first as? ProfileHeaderView {
            view.addSubview(headerView)

        }
    }


    
    override func viewWillLayoutSubviews() {
        headerView.frame = view.frame
    }
}
