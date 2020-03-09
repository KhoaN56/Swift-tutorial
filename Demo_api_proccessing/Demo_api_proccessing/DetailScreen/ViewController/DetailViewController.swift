//
//  DetailViewController.swift
//  Demo_api_proccessing
//
//  Created by Khoa Nguyen on 3/5/20.
//  Copyright © 2020 Khoa Nguyen. All rights reserved.
//

import UIKit

protocol DetailViewControllerProtocol {
    func displayLoadedData(detailMovie: DetailMovie!)
    func failToLoadData(message: String!)
}

class DetailViewController: UIViewController, DetailViewControllerProtocol {
    
    var interactor: DetailInteractorProtocol?
    var router: DetailRouterProtocol?
    
    var movieID: Int?

    @IBOutlet weak var backdropImg: UIImageView!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblOriginalTitle: UILabel!
    @IBOutlet weak var lblOverview: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        if let id = movieID {
            interactor?.loadDetail(movieId: id)
        }
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension DetailViewController{
    func displayLoadedData(detailMovie: DetailMovie!) {
        // TODO: Do something cool
        let queue = DispatchQueue(label: "Loading backdrop")
        queue.async {
            do{
                let url = URL(string: "https://image.tmdb.org/t/p/w500\(detailMovie.backdropPath ?? "")")
                guard let imgLink = url else{
                    print("https://image.tmdb.org/t/p/original\(String(describing: detailMovie.backdropPath))")
                    print("Can't create link")
                    return
                }
                let data = try Data(contentsOf: imgLink)
                DispatchQueue.main.async {
                    self.backdropImg.image = UIImage(data: data)
                }
            }catch{
                self.alertError(message: error.localizedDescription)
            }
        }
        lblTitle.text = detailMovie.title
        lblOriginalTitle.text = "(\(detailMovie.originalTitle ?? ""))"
        lblOverview.text = detailMovie.overview
    }
    
    func failToLoadData(message: String!) {
        // Display error
        alertError(message: message)
    }
    
    func alertError(message: String!) {
        guard let errMsg = message else{
            print("Error fetching error message...")
            return
        }
        let alertDialog = UIAlertController(title: "Alert", message: errMsg, preferredStyle: UIAlertController.Style.alert)
        alertDialog.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel, handler: nil))
        show(alertDialog, sender: nil)
        print(errMsg)
    }
}
