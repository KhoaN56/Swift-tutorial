//
//  DetailWorker.swift
//  Demo_api_proccessing
//
//  Created by Khoa Nguyen on 3/5/20.
//  Copyright © 2020 Khoa Nguyen. All rights reserved.
//

import Foundation

let link = "https://api.themoviedb.org/3/movie/"

//protocol DetailWorkerProtocol {
//    func loadData(movieID: Int!, onSuccess: ([String: Any]) -> Void, onFailure: (String) -> Void)
//}

class DetailWorker {
    
    func loadData(movieID: Int!, onComplete: @escaping ([String: Any]?, String) -> Void) {
        if movieID == nil {
            onComplete(nil, "Movie ID not found!")
            return
        }
        let url = URL(string: link + String(movieID) + "?api_key=0ca6327142783ed7b013409b525073ac&language=en-US")
        guard let apiLink = url else{
            onComplete(nil, "Fail to create url to get data.")
            return
        }
        let req = URLRequest(url: apiLink)
        URLSession.shared.dataTask(with: req) { (data, response, error) in
            do{
                let json = try JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions.allowFragments) as! [String: Any]
                DispatchQueue.main.async {
                    onComplete(json, "")
                }
            }catch{
                onComplete(nil, error.localizedDescription)
            }
        }.resume()
    }
    
}
