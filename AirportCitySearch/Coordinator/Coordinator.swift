//
//  Coordinator.swift
//  AirportCitySearch
//
//  Created by Imran Mia on 23/9/21.
//

import Foundation

protocol Coordinator: AnyObject {
    var childCoordinators:[Coordinator] { get set }
    func start()
}


extension Coordinator {
    func addChild(coordinator:Coordinator)-> Void {
        childCoordinators.append(coordinator)
    }
    func remove(coordinator: Coordinator) -> Void {
        childCoordinators = childCoordinators.filter({$0  !== coordinator })
    }
}
