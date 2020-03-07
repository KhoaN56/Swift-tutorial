//
//  DetailRouter.swift
//  Demo_api_proccessing
//
//  Created by Khoa Nguyen on 3/5/20.
//  Copyright © 2020 Khoa Nguyen. All rights reserved.
//

import Foundation

protocol DetailRouterProtocol {
    func transit()
}

class DetailRouter: DetailRouterProtocol {
    
    let controller: DetailViewController!
    
    init(controller: DetailViewController) {
        self.controller = controller
    }
    
    func transit(){
        
    }
}
