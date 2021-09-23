//
//  SearchCoordinator.swift
//  AirportCitySearch
//
//  Created by Imran Mia on 23/9/21.
//

import UIKit

class SearchCoordinator : BaseCoordinator {
    
    private let navigationController : UINavigationController
    init(navigationController:UINavigationController) {
        self.navigationController = navigationController
    }
    override func start() {
        let view = SearchCityVC.instantiate()
        
        view.viewModelBuilder = {
            SearchCityViewModel(input: $0)
        }
        navigationController.pushViewController(view, animated: true)
    }
}
