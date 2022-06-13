//
//  SplashViewController.swift
//  WakFanApp
//
//  Created by 박호현 on 2022/06/13.
//

import UIKit

class SplashViewController: UIViewController {
    
    @IBOutlet weak var leadingConstraint: NSLayoutConstraint!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animate(withDuration: 2, delay: 0, options: [.curveEaseOut, .autoreverse]) {
            self.leadingConstraint.constant = -(self.imageView.frame.width - self.view.frame.width)
            self.view.layoutIfNeeded()
        }
    }
}
