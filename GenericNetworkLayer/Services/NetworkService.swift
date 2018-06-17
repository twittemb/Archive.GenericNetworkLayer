//
//  NetworkService.swift
//  ShopifyStarwars
//
//  Created by Thibault Wittemberg on 18-04-12.
//  Copyright © 2018 WarpFactor. All rights reserved.
//

import Foundation

final class NetworkService {

    let baseUrl: URL

    init(withBaseUrl baseUrl: URL) {
        self.baseUrl = baseUrl
    }

    func fetch<TypeOfModel: Codable> (withRoute route: AnyRoute<TypeOfModel>, completionHandler handler: @escaping (TypeOfModel?) -> Void)  {

        guard let url = route.getPath(forBaseUrl: self.baseUrl, andApiKey: "") else {
            handler(nil)
            return
        }

        let dataTask = URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard error == nil else { return }

            if let data = data {
                let model = try? JSONDecoder().decode(TypeOfModel.self, from: data)
                handler(model)
            } else {
                handler(nil)
            }
        }

        dataTask.resume()
    }
}
