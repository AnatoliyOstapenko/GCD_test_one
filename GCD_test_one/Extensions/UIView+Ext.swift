//
//  UIView+Ext.swift
//  GCD_test_one
//
//  Created by AnatoliiOstapenko on 18.06.2022.
//

import UIKit

fileprivate let padding: CGFloat = 50

extension UIView {
    
    // MARK: - FirstScreenVC Layout
    
    func setActionButton(view: UIView, button: UIButton) {
        view.addSubview(button)
        
        NSLayoutConstraint.activate([
            button.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -padding * 2),
            button.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding),
            button.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding),
            button.heightAnchor.constraint(equalToConstant: padding)
        ])
    }
    
    // MARK: - SecondScreenVC Layuout
    
    func setImageView(view: UIView, imageView: UIImageView) {
        view.addSubview(imageView)
        imageView.contentMode = .scaleAspectFit
        
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: padding),
            imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding),
            imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding),
            imageView.heightAnchor.constraint(equalToConstant: padding * 5)
        ])
    }
    



}
