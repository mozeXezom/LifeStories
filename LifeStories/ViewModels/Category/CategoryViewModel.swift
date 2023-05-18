//
//  CategoryViewModel.swift
//  LifeStories
//
//  Created by mozeX on 19.05.2023.
//

import UIKit

protocol CategoryViewModelNavigation: AnyObject {
    func showDetails()
}

class CategoryViewModel {
    
    weak var navigation : CategoryViewModelNavigation!
    
    init(navigation: CategoryViewModelNavigation) {
        self.navigation = navigation
    }
    
    func showDetails() {
        navigation.showDetails()
    }

}
