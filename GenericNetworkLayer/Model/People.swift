//
//  People.swift
//  ShopifyStarwars
//
//  Created by Thibault Wittemberg on 18-04-12.
//  Copyright © 2018 WarpFactor. All rights reserved.
//

import Foundation

struct People: Codable {
    let name: String
    let gender: String
    let species: [URL]
}

extension People: CustomStringConvertible {
    var description: String {
        return "\(self.name) is a \(self.gender) and is part of species \(self.species)"
    }
}
