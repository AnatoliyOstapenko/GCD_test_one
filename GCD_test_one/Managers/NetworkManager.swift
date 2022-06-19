//
//  NetworkManager.swift
//  GCD_test_one
//
//  Created by AnatoliiOstapenko on 18.06.2022.
//

import UIKit

class NetworkManager {
    // add singleton
    static let shared = NetworkManager()
    init() {}
    
    func fetchImage(completion: @escaping(UIImage?) -> Void) {
        guard let url = URL(string: Constants.imageURL) else { return }
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            guard error == nil, let response = response as? HTTPURLResponse,
                  response.statusCode == 200, let data = data,
                  let image = UIImage(data: data) else { return }
            completion(image)
        }
        task.resume()
    }
    
}
