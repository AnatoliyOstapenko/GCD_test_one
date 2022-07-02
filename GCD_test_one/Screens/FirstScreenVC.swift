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
    let sizeClassesButton = FirstScreenButton(title: "Go to Size Classes", backgroundColor: .magenta)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
        
//        DispatchQueue.main.async {
//            print("start task #0")
//            print("end task #0")
//        }
//
//        DispatchQueue.global(qos: .background).async {
//            print("start task #1")
//            print("end task #1")
//            DispatchQueue.global(qos: .background).sync {
//                print("start task #2")
//                print("end task #2")
//            }
//            print("start task #3")
//            print("end task #3")
//        }
//        print("start task #4")
//        print("end task #4")
    }
    
    private func configure() {
        view.setFastButton(view: view, button: fastButton)
        view.setSlowButton(view: view, button: slowButton)
        view.setSCButton(view: view, button: sizeClassesButton)
        fastButton.addTarget(self, action: #selector(fastButtonPressed), for: .touchUpInside)
        slowButton.addTarget(self, action: #selector(slowButtonPressed), for: .touchUpInside)
        sizeClassesButton.addTarget(self, action: #selector(scButtonPressed), for: .touchUpInside)
    }
    
    @objc func fastButtonPressed() {
        let vc = SecondScreenVC()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func slowButtonPressed() {
        let vc = ThirdScreenVC()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func scButtonPressed() {
        let vc = SizeClassesVC()
        navigationController?.pushViewController(vc, animated: true)
    }
    
}


