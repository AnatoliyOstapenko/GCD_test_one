//
//  SecondScreenVC.swift
//  GCD_test_one
//
//  Created by AnatoliiOstapenko on 18.06.2022.
//

import UIKit

class SecondScreenVC: UIViewController {
    
    var imageView = UserImage(frame: .zero)

    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    private func configure() {
        view.backgroundColor = .systemBackground
        view.setImageView(view: view, imageView: imageView)
    }
    
 
}
