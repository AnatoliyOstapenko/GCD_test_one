//
//  ThirdScreenVC.swift
//  GCD_test_one
//
//  Created by AnatoliiOstapenko on 19.06.2022.
//

import UIKit

class ThirdScreenVC: UIViewController {
    
    let slowImageView = UIImageView()
    private var imageURL: URL?
    private var image: UIImage? {
        get {
            return slowImageView.image
        }
        set {
            slowImageView.image = newValue
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
        getSlowImage()

    }
    
    private func configure() {
        view.backgroundColor = .systemBackground
        slowImageView.contentMode = .scaleAspectFit
        slowImageView.translatesAutoresizingMaskIntoConstraints = false
        view.setImageView(view: view, imageView: slowImageView)
    }
    
    private func getSlowImage() {
        imageURL = URL(string: Constants.imageURL)
        guard let url = imageURL, let imageData = try? Data(contentsOf: url) else { return }
        self.image = UIImage(data: imageData)
    }
    
}
