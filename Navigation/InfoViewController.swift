//
//  InfoViewController.swift
//  Navigation
//
//  Created by Aysa Minkova on 2021/08/06.
//

import UIKit

class InfoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemPink
        
        let alertButton = UIButton(frame: CGRect(x: 50, y: 200, width: 200, height: 50))
        alertButton.backgroundColor = .systemGray
        alertButton.setTitle("Read", for: .normal)
        alertButton.center = view.center
        alertButton.addTarget(self, action: #selector(pushAlert), for: .touchUpInside)
        view.addSubview(alertButton)
}
    
        
    @objc func pushAlert() {
        let alertVC = UIAlertController(title: "Oops", message: "Restricted access", preferredStyle: .alert)
        alertVC.addAction(UIAlertAction(title: "OK", style: .default, handler:  {
            (alert: UIAlertAction!) in print("OK pressed")
        }))
        alertVC.addAction(UIAlertAction(title: "Cancel", style: .default,handler:  {
            (alert: UIAlertAction!) in print("CANCEL pressed")
        }))
        self.present(alertVC, animated: true, completion: nil)
        }

}
