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
    private var movies: [Movie] = [
        Movie(name: "Spyderman"),
        Movie(name: "Late nights"),
        Movie(name: "Paris")
    
    ]
    
    //MARK: - Outlets
    @IBOutlet var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    //MARK: - Private Methods
    private func updateViews(){
        tableView.reloadData()
    }
    
    
    //MARK: - Prepare
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "NewMovieSegue"{
            if let addMovieVC = segue.destination as? AddMovieViewController{
                addMovieVC.delegate = self
            }
        }
    }
    
}

//MARK: - UITableViewDataSource

extension MovieListViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieDeatailCell", for: indexPath) as! MovieDetailTableViewCell
        
        let data = movies[indexPath.row]
        
        cell.TitleLabel.text = data.name
        
        cell.delegate = self
        
        return cell
    }
    

    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete{
            movies.remove(at: indexPath.row)
        }
        updateViews()
    }
    
}

//MARK: - AddMovieDelegate

extension MovieListViewController: AddMovieDelegate{
    func addNewMovieToArray(movie: Movie) {
        movies.append(movie)
        updateViews()
    }
    
}

extension MovieListViewController: WatchedStatusDelegate{
    func statusChanged(title: String, status: Bool) {
        var item = movies.first { (movie) -> Bool in
            movie.name == title
        }

        item?.watched = status
        updateViews()
    }
    
}
