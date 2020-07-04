//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by FGT MAC on 7/3/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func addNewMovieToArray(movie:Movie)
}

class AddMovieViewController: UIViewController {
    
    //MARK: - Oulets
    @IBOutlet weak var movieTitle: UITextField!
    
    //MARK: - Properties
    var delegate: AddMovieDelegate?
    
    
    @IBAction func saveMovieButton(_ sender: UIButton) {
        
        if let newMovie = movieTitle.text, !newMovie.isEmpty{
            navigationController?.popViewController(animated: true)
            delegate?.addNewMovieToArray(movie: Movie(name: newMovie))
        }
        
        
    }
}
