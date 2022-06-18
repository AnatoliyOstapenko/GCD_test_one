//
//  UserImage.swift
//  GCD_test_one
//
//  Created by AnatoliiOstapenko on 18.06.2022.
//

import UIKit

class UserImage: UIImageView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        layer.cornerRadius = 10
        clipsToBounds = true
        image = UIImage(named: Constants.initialLogo)
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    func setImage() {
        
    }
    
}
