//
//  ThirdScreenVC.swift
//  GCD_test_one
//
//  Created by AnatoliiOstapenko on 19.06.2022.
//

import UIKit

class ThirdScreenVC: DataLoadingVC {
    
    let slowImageView = UIImageView()
    private var imageURL: URL?
    private var image: UIImage? {
        get {
            return slowImageView.image
        }
        set {
            spinnerDeactivated()
            slowImageView.image = newValue
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
        getSlowImage()
        delay(seconds: 2) { self.loginAlert() }
    }
    
    private func configure() {
        view.backgroundColor = .systemBackground
        slowImageView.contentMode = .scaleAspectFit
        slowImageView.translatesAutoresizingMaskIntoConstraints = false
        view.setImageView(view: view, imageView: slowImageView)
        
    }
    
    private func loginAlert() {
        let alert = UIAlertController(title: Constants.alertTitle, message: Constants.alertText, preferredStyle: .alert)
        
        let okButton = UIAlertAction(title: Constants.ok, style: .destructive, handler: nil)
        let cancelButton = UIAlertAction(title: Constants.cancel, style: .cancel, handler: nil)
        
        alert.addAction(okButton)
        alert.addAction(cancelButton)
        
        alert.addTextField { userTextField in
            userTextField.placeholder = Constants.userPlaceholder
        }
        alert.addTextField { passwordTextField in
            passwordTextField.placeholder = Constants.passwordPlaceholder
            passwordTextField.isSecureTextEntry = true
        }
        self.present(alert, animated: true, completion: nil)
    }
    
    
    private func getSlowImage() {
        imageURL = URL(string: Constants.imageURL)
        spinnerActivated()
        // create queue, choose global, set priority to utility
        let queue = DispatchQueue.global(qos: .utility)
        
        // set queue as async method
        queue.async {
            guard let url = self.imageURL, let imageData = try? Data(contentsOf: url) else { return }
            DispatchQueue.main.async {
                self.image = UIImage(data: imageData)
            }
        }
    }
}
