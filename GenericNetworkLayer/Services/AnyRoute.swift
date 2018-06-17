//
//  Route.swift
//  ShopifyStarwars
//
//  Created by Thibault Wittemberg on 18-04-12.
//  Copyright © 2018 WarpFactor. All rights reserved.
//

import Foundation

struct AnyRoute<Model: Codable> {

    let endpoint: String
    var id: Int?

    init (withEndpoint endpoint: String, withId id: Int? = nil) {
        self.endpoint = endpoint
        self.id = id
    }

    func getPath(forBaseUrl baseUrl: URL, andApiKey apiKey: String) -> URL? {
        var endpoint = self.endpoint
        if let id = self.id {
            endpoint = endpoint+"\(id)"
        }

        return URL(string: baseUrl.absoluteString+endpoint+"?api_key=\(apiKey)")
    }
}
