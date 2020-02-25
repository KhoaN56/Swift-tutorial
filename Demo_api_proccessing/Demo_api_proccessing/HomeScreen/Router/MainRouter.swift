//
//  MainRouter.swift
//  Demo_api_proccessing
//
//  Created by Khoa Nguyen on 2/25/20.
//  Copyright © 2020 Khoa Nguyen. All rights reserved.
//

import Foundation

protocol MainRouterProtocol {
    func toDetailScreen(viewController: ViewController)
}

class MainRouter : MainRouterProtocol{
    
    var mainView: ViewController?
    
    init(mainView: ViewController) {
        self.mainView = mainView
    }
    
    func toDetailScreen(viewController: ViewController) {
        mainView?.navigationController?.pushViewController(<#T##viewController: UIViewController##UIViewController#>, animated: <#T##Bool#>)
    }
}
