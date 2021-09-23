//
//  BaseCoordinatorr.swift
//  AirportCitySearch
//
//  Created by Imran Mia on 23/9/21.
//

import Foundation

class BaseCoordinator: Coordinator {
    var childCoordinators: [Coordinator] = []
    
    func start() {
        print("start...")
    }
    
    
}
