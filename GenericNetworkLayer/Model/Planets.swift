//
//  Planets.swift
//  StateCentric
//
//  Created by Thibault Wittemberg on 18-04-12.
//  Copyright © 2018 WarpFactor. All rights reserved.
//

import Foundation

struct Planets: Codable {
    let count: Int
    let next: URL
    let results: [Planet]
}

extension Planets: CustomStringConvertible {
    var description: String {
        return "There are \(self.count) planets: \(self.results)"
    }
}
