//
//  InitialNavController.swift
//  GCD_test_one
//
//  Created by AnatoliiOstapenko on 18.06.2022.
//

import UIKit

class InitialNavController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    private func configure() {
        let vc = FirstScreenVC()
        vc.view.backgroundColor = .systemBackground
        self.pushViewController(vc, animated: true)
    }

}
