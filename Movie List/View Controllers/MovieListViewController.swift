//
//  MovieListViewController.swift
//  Movie List
//
//  Created by FGT MAC on 7/3/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieListViewController: UIViewController, UITableViewDelegate {
    
    //MARK: - Properties
    var movies = [Movie]()

    //MARK: - Outlets
    @IBOutlet var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        movies.append(Movie(name: "Crazy"))

    }
    
    //MARK: - Private Methods
    private func reloadViews(){
        tableView.reloadData()
    }
    
}


extension MovieListViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieDeatailCell", for: indexPath) as! MovieDetailTableViewCell
        
        let data = movies[indexPath.row]
        
        cell.TitleLabel.text = data.name
        
        cell.watchedLabel.isSelected = data.watched
        
        return cell
    }
    
    
}
