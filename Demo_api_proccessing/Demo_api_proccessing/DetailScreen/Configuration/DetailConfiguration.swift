//
//  DetailConfiguration.swift
//  Demo_api_proccessing
//
//  Created by Khoa Nguyen on 3/5/20.
//  Copyright © 2020 Khoa Nguyen. All rights reserved.
//

import Foundation
import UIKit

class DetailConfiguration {
    static func setup(movieID: Int) -> DetailViewController {
        let controller = DetailViewController()
        let router = DetailRouter(controller: controller)
        let presenter = DetailPresenter(controller: controller)
        let worker = DetailWorker()
        let interactor = DetailInteractor(worker: worker, presenter: presenter)
        
        controller.interactor = interactor
        controller.router = router
        controller.movieID = movieID
        return controller
    }
}
