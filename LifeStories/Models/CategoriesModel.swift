//
//  CategoriesModel.swift
//  LifeStories
//
//  Created by mozeX on 19.05.2023.
//

import Foundation

struct Categories: Codable {
    
    let title: String
}

struct CategoryInfo: Codable {
    
    let category: [Categories]
}
