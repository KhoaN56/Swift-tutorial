//
//  MainRouter.swift
//  Demo_api_proccessing
//
//  Created by Khoa Nguyen on 2/25/20.
//  Copyright © 2020 Khoa Nguyen. All rights reserved.
//

import Foundation
import UIKit

protocol MainRouterProtocol {
    func toDetailScreen(viewController: ViewController, movieID: Int!)
}

class MainRouter : MainRouterProtocol{
    
    var mainView: ViewController?
    
    init(mainView: ViewController) {
        self.mainView = mainView
    }
    
    func toDetailScreen(viewController: ViewController, movieID: Int!) {
        let detailViewController = DetailConfiguration.setup(movieID: movieID)
        mainView?.navigationController?.pushViewController(detailViewController, animated: true)
    }
}
