//
//  AppCoordinator.swift
//  AirportCitySearch
//
//  Created by Imran Mia on 23/9/21.
//

import UIKit

class AppCoordinator: BaseCoordinator {
    
    private let window: UIWindow
    
    private var navigationController: UINavigationController = {
        let naviagtionController = UINavigationController()
        //Change navigation colors
        naviagtionController.navigationBar.barTintColor = .systemRed
        naviagtionController.navigationBar.tintColor = UIColor.white
        naviagtionController.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        return naviagtionController
    }()
    
    init(window: UIWindow) {
        self.window = window
    }
    
    override func start() {
        let searchVC = SearchCoordinator(navigationController: navigationController)
        self.addChild(coordinator: searchVC)
        searchVC.start()
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
    }
}
