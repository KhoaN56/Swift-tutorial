//
//  MainInteractor.swift
//  Demo_api_proccessing
//
//  Created by Khoa Nguyen on 2/20/20.
//  Copyright © 2020 Khoa Nguyen. All rights reserved.
//

import Foundation
import UIKit

protocol MainInteractProtocol {
    
    // Trigered loading method from ViewController
    func loadMovies(url: String)

}

class MainInteractor: MainInteractProtocol{
    
    // Main worker
    var worker:MainWorker!
    
    // Main presenter
    let mainPresenter: OnFetchedResult!
    
    init(listener: OnLoadMoviesCompleteListener){
        mainPresenter = MainPresenter(listener: listener)
    }
    
    func loadMovies(url: String) {
        // Check things validated properly
        worker = MainWorker()
        worker.loadData(link: url) { (movieList, error) in
            
            // No error or else
            if error == "" {
                self.mainPresenter.onSuccess(movieList: movieList!)
            } else {
                self.mainPresenter.onFailure(error: error)
            }
        }
    }
}
