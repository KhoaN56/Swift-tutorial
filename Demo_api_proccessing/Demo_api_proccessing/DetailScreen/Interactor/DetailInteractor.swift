//
//  DetailInteractor.swift
//  Demo_api_proccessing
//
//  Created by Khoa Nguyen on 3/5/20.
//  Copyright © 2020 Khoa Nguyen. All rights reserved.
//

import Foundation

protocol DetailInteractorProtocol {
    func loadDetail(movieId: Int!)
}

class DetailInteractor: DetailInteractorProtocol{
    
    let worker: DetailWorker!
    let presenter: DetailPresenter!
    
    init(worker: DetailWorker!, presenter: DetailPresenter) {
        self.worker = worker
        self.presenter = presenter
    }
    
    func loadDetail(movieId: Int!) {
        
        guard movieId != nil else {
            return
        }
        worker.loadData(movieID: movieId) { (json, error) in
            guard error == "" else{
                self.presenter.errorLoadingDetail(errorMsg: error)
                return
            }
            guard let data = json else{
                self.presenter.errorLoadingDetail(errorMsg: "Unwrapping a nil value")
                return
            }
            self.presenter.display(json: data)
        }
    }
    
}
