//
//  DataLoadingVC.swift
//  GCD_test_one
//
//  Created by AnatoliiOstapenko on 19.06.2022.
//

import UIKit

class DataLoadingVC: UIViewController {

    var container: UIView!
    
    func spinnerActivated() {
        container = UIView(frame: view.bounds)
        view.addSubview(container)
        container.backgroundColor = .systemBackground
        
        let activityIndicator = UIActivityIndicatorView(style: .large)
        container.addSubview(activityIndicator)
        activityIndicator.color = .label
        activityIndicator.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            activityIndicator.centerXAnchor.constraint(equalTo: container.centerXAnchor),
            activityIndicator.centerYAnchor.constraint(equalTo: container.centerYAnchor)
        ])
        activityIndicator.startAnimating()
    }
    
    func spinnerDeactivated() {
        DispatchQueue.main.async {
            self.container.removeFromSuperview()
            self.container = nil
        }
    }


}
