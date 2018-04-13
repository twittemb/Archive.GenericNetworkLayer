//
//  Planet.swift
//  ShopifyStarwars
//
//  Created by Thibault Wittemberg on 18-04-12.
//  Copyright © 2018 WarpFactor. All rights reserved.
//

import Foundation

struct Planet: Codable {
    let name: String
    let films: [URL]
}

extension Planet: CustomStringConvertible {
    var description: String {
        return "\(self.name) appears in \(self.films)"
    }
}
