//
//  MainWorker.swift
//  Demo_api_proccessing
//
//  Created by Khoa Nguyen on 2/20/20.
//  Copyright © 2020 Khoa Nguyen. All rights reserved.
//

import Foundation

class MainWorker {
    
    func loadData(link: String,  callBack: @escaping ([Movie]?, String) -> Void){
        let url = URL(string: link)
        let req = URLRequest(url: url!)
        URLSession.shared.dataTask(with: req) { (data, res, err) in
            print(String(data: data!, encoding: .utf8)!)
            do{
                let json = try JSONSerialization.jsonObject(with: data!, options: .allowFragments) as! [String: Any]
                
                let rows = json["results"] as! [AnyObject]
                var movieList:[Movie] = []
                
                // Parsing JSON data to movie model data
                for row in rows{
                    guard let imagePath = row["poster_path"] else{
                        continue
                    }
                    movieList.append(Movie(id: row["id"] as! Int,
                                           title: row["title"] as! String,
                                           imagePath: imagePath as! String,
                                           overView: row["overview"] as! String,
                                           rate: row["vote_count"] as! Int,
                                           releaseDate: row["release_date"] as! String))
                }
                // Call back to interactor to send the fetched data
                DispatchQueue.main.async {
                    callBack(movieList, "")
                }
            }catch{
                // Log error catched, send to interactor to pass to presenter
                print(error.localizedDescription)
                DispatchQueue.main.async{
                    callBack(nil, error.localizedDescription)
                }
            }
        }.resume()
    }
    //https://image.tmdb.org/t/p/w500
}
