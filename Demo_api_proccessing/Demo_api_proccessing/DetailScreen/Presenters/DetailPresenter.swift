//
//  DetailPresenter.swift
//  Demo_api_proccessing
//
//  Created by Khoa Nguyen on 3/5/20.
//  Copyright © 2020 Khoa Nguyen. All rights reserved.
//

import Foundation

protocol DetailPresenterProtocol {
    func display(json: [String: Any]!)
    func errorLoadingDetail(errorMsg: String!)
}

class DetailPresenter: DetailPresenterProtocol{
    
    let controller: DetailViewController!
    
    init(controller: DetailViewController) {
        self.controller = controller
    }
    
    func display(json: [String: Any]!) {
        let movieDetail = DetailMovie(json: json)
        controller.displayLoadedData(detailMovie: movieDetail)
    }
    
    func errorLoadingDetail(errorMsg: String!){
        controller.alertError(message: errorMsg)
    }
    
}
