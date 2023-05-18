//
//  MenuViewModel.swift
//  LifeStories
//
//  Created by mozeX on 19.05.2023.
//

import UIKit

protocol MenuViewModelNavigation: AnyObject {

}

class MenuViewModel {
    
    weak var navigation : MenuViewModelNavigation!
    
    init(navigation: MenuViewModelNavigation) {
        self.navigation = navigation
    }
    
}
