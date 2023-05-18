//
//  MenuCoordinator.swift
//  LifeStories
//
//  Created by mozeX on 19.05.2023.
//

import Foundation
import UIKit

class MenuCoordinator: Coordinator {
    
    var parentCoordinator: Coordinator?
    
    var children: [Coordinator] = []
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    deinit {
        print("Deinit home coordinator")
    }
    
    func start() {
        let menuVC = MenuViewController()
        menuVC.viewModel = MenuViewModel(navigation: self)
        navigationController.pushViewController(menuVC, animated: true)
        print("Start")
    }

}

extension MenuCoordinator: MenuViewModelNavigation {
    
}
