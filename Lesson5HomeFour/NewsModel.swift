//
//  NewsModel.swift
//  Lesson5HomeFour
//
//  Created by user on 18/1/22.
//

import Foundation

class NewsModel {
    var title: String
    var description: String
    var image: String
    
    init(title: String, description: String, image: String) {
        self.title = title
        self.description = description
        self.image = image
    }
}
