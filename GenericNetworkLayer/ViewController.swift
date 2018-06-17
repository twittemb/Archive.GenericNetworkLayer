//
//  ViewController.swift
//  GenericNetworkLayer
//
//  Created by Thibault Wittemberg on 18-04-12.
//  Copyright © 2018 WarpFactor. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        guard let url = URL(string: "https://swapi.co/api/") else {
            return
        }

        let networkService = NetworkService(withBaseUrl: url)

        let planetEndpoint = AnyRoute<Planet>(withEndpoint: "planets/", withId: 3)
        let planetsEndpoint = AnyRoute<Planets>(withEndpoint: "planets/")
        let peopleEndpoint = AnyRoute<People>(withEndpoint: "people/", withId: 1)
        let peoplesEndpoint = AnyRoute<Peoples>(withEndpoint: "people/")

        networkService.fetch(withRoute: planetEndpoint) { (planet) in
            guard let planet = planet else { print ("There is no planet") ; return }

            print ("---------- Planet 3")
            print (planet)
        }

        networkService.fetch(withRoute: planetsEndpoint) { (planets) in
            guard let planets = planets else { print ("There are no planets") ; return }

            print ("---------- All the planets")
            print (planets)
        }

        networkService.fetch(withRoute: peopleEndpoint) { (people) in
            guard let people = people else {print ("There is no people") ; return }

            print ("---------- People 1")
            print (people)
        }

        networkService.fetch(withRoute: peoplesEndpoint) { (peoples) in
            guard let peoples = peoples else { print ("There are no people") ; return }

            print ("---------- All the People")
            print (peoples)
        }
    }

}

