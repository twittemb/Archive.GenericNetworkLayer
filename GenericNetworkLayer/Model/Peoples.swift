//
//  Peoples.swift
//  StateCentric
//
//  Created by Thibault Wittemberg on 18-04-12.
//  Copyright © 2018 WarpFactor. All rights reserved.
//

import Foundation

struct Peoples: Codable {
    let count: Int
    let next: URL
    let results: [People]
}

extension Peoples: CustomStringConvertible {
    var description: String {
        return "There are \(self.count) peoples: \(self.results)"
    }
}
