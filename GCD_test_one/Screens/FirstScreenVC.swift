//
//  ViewController.swift
//  GCD_test_one
//
//  Created by AnatoliiOstapenko on 18.06.2022.
//

import UIKit

class FirstScreenVC: UIViewController {
    
    let fastButton = FirstScreenButton(title: "Go to fast way", backgroundColor: .systemCyan)
    let slowButton = FirstScreenButton(title: "Go to slow way", backgroundColor: .systemPink)

    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    private func configure() {
        view.setFastButton(view: view, button: fastButton)
        view.setSlowButton(view: view, button: slowButton)
        fastButton.addTarget(self, action: #selector(fastButtonPressed), for: .touchUpInside)
    }
    
    @objc func fastButtonPressed() {
        let secondVC = SecondScreenVC()
        navigationController?.pushViewController(secondVC, animated: true)
    }
    
    @objc func slowButtonPressed() {
        let secondVC = SecondScreenVC()
        navigationController?.pushViewController(secondVC, animated: true)
    }


}

