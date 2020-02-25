//
//  Movie.swift
//  Demo_api_proccessing
//
//  Created by Khoa Nguyen on 2/20/20.
//  Copyright © 2020 Khoa Nguyen. All rights reserved.
//

import Foundation

class Movie{
    var id: Int!
    var imgData: Data!
    var title:String!
    var imagePath:String!
    var overView:String!
    var vote:Int!
    var releaseDate:String!
    
    init(id: Int, title: String, imagePath: String, overView: String, rate: Int, releaseDate: String) {
        self.id = id
        self.title = title
        self.imagePath = imagePath
        self.overView = overView
        self.vote = rate
        self.releaseDate = releaseDate
    }
    
}
