//
//  ViewController.swift
//  GCD_test_one
//
//  Created by AnatoliiOstapenko on 18.06.2022.
//

import UIKit

class FirstScreenVC: UIViewController {
    
    let actionButton = FirstScreenButton(title: "Go to the next screen", backgroundColor: .systemCyan)

    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    private func configure() {
        view.setActionButton(view: view, button: actionButton)
        actionButton.addTarget(self, action: #selector(actionButtonPressed), for: .touchUpInside)
    }
    
    @objc func actionButtonPressed() {
        let secondVC = SecondScreenVC()
        navigationController?.pushViewController(secondVC, animated: true)
    }


}

