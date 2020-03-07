//
//  DetailMovie.swift
//  Demo_api_proccessing
//
//  Created by Khoa Nguyen on 3/5/20.
//  Copyright © 2020 Khoa Nguyen. All rights reserved.
//

import Foundation

class DetailMovie {
    
    let title: String!
    let backdropPath: String!
    let overview: String!
    
    init(title: String!, backdropPath: String!, overview: String!) {
        self.title = title
        self.backdropPath = backdropPath
        self.overview = overview
    }
    
    init(json: [String: Any]) {
        self.title = json["title"] as? String
        self.backdropPath = json["backdrop_path"] as? String
        self.overview = json["overview"] as? String
    }
}
