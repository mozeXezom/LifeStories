//
//  MainViewModel.swift
//  LifeStories
//
//  Created by mozeX on 19.05.2023.
//

import UIKit

protocol MainViewModelNavigation: AnyObject {
    func showMenu()
    func showMusicPlayer()
    func showSelectedCategory()
}

class MainViewModel {
    
    weak var navigation : MainViewModelNavigation!
    var categories = [CategoryInfo]()
    
    init(navigation: MainViewModelNavigation) {
        self.navigation = navigation
    }
    
    func showMenu() {
        navigation.showMenu()
    }
    
    func showMusicPlayer() {
        navigation.showMusicPlayer()
    }
    
    func showSelectedCategory() {
        navigation.showSelectedCategory()
    }
}
