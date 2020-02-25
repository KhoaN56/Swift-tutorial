//
//  DelegateResult.swift
//  Demo_api_proccessing
//
//  Created by Khoa Nguyen on 2/20/20.
//  Copyright © 2020 Khoa Nguyen. All rights reserved.
//

import Foundation
import UIKit

protocol OnLoadMoviesCompleteListener {
    
    func onLoadImageSuccess(image: UIImage, index: Int)
    
    func onSuccess(movieList: [Movie])
    
    func onFailure(error: String)
}
