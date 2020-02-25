//
//  MainPresenter.swift
//  Demo_api_proccessing
//
//  Created by Khoa Nguyen on 2/20/20.
//  Copyright © 2020 Khoa Nguyen. All rights reserved.
//

import Foundation
import UIKit

protocol OnFetchedResult {
    
    func onSuccess(movieList: [Movie])
    
    func onFailure(error: String)
}

class MainPresenter: OnFetchedResult{
    
    let listener:OnLoadMoviesCompleteListener!
    
    init(listener: OnLoadMoviesCompleteListener){
        self.listener = listener
    }
    
    func onSuccess(movieList: [Movie]) {
        // Check logic
        // No logic Error
        listener.onSuccess(movieList: movieList)
    }
    
    func onFailure(error: String) {
        listener.onFailure(error: error)
    }
    
    
}
