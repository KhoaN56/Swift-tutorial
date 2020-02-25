//
//  ViewController.swift
//  Demo_api_proccessing
//
//  Created by Khoa Nguyen on 2/20/20.
//  Copyright © 2020 Khoa Nguyen. All rights reserved.
//

import UIKit

protocol OnLoadMoviesCompleteListener {
    
    func onSuccess(movieList: [Movie])
    
    func onFailure(error: String)
}


class ViewController: UIViewController,UITableViewDataSource, OnLoadMoviesCompleteListener {
    
    // Check showing alert
    var isAlertShowing = false
    
    // List
    var movieList:[Movie] = []
    
    // Url
    let link = "https://api.themoviedb.org/3/movie/top_rated?api_key=0ca6327142783ed7b013409b525073ac&language=en-US&page=1"
    
    // Interactor
    var interactor:MainInteractProtocol!
    
    // Router
    var mainRouter: MainRouterProtocol?

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        mainRouter = MainRouter(self)
        interactor = MainInteractor(listener: self)
        interactor.loadMovies(url: link)
        tableView.dataSource = self
    }
    
    // When loading movie success
    func onSuccess(movieList: [Movie]) {
//        interactor.loadImage(movieList: movieList)
        self.movieList = movieList
        tableView.reloadData()
    }
    
    fileprivate func showAlert(_ error: String) {
        let alerDialog = UIAlertController(title: "Error", message: error, preferredStyle: .actionSheet)
        alerDialog.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel, handler: { (_) in
            self.isAlertShowing = false
        }))
        isAlertShowing = true
        show(alerDialog, sender: nil)
    }
    
    func onFailure(error: String) {
        guard isAlertShowing == false else{
            return
        }
        showAlert(error)
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "item") as! RowViewController
        cell.titleLabel.text = self.movieList[indexPath.row].title
        cell.rateLabel.text = String(self.movieList[indexPath.row].vote)
        cell.overViewLabel.text = self.movieList[indexPath.row].overView
        cell.releaseDateLabel.text = self.movieList[indexPath.row].releaseDate
//        guard movieList[indexPath.row].img == nil else{
//            return cell
//        }e
        if let imgData = movieList[indexPath.row].imgData {
            cell.imgView.image = UIImage(data: imgData)
        }
        let queue = DispatchQueue(label: "Load Image")
        queue.async {
            if let url = URL(string: "https://image.tmdb.org/t/p/w500\(String(describing: self.movieList[indexPath.row].imagePath!))"){
                do{
                    let data = try Data(contentsOf: url)
                    DispatchQueue.main.async {
                        cell.imgView.image = UIImage(data: data)
                    }
                } catch{
                    self.showAlert(error.localizedDescription)
                }
            }
        }
        return cell
    }

}

