//
//  MovieDetailTableViewCell.swift
//  Movie List
//
//  Created by FGT MAC on 7/3/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieDetailTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var TitleLabel: UILabel!
    @IBOutlet weak var watchedLabel: UIButton!
    
    //MARK: - Properties
    var watched: Bool = false
    

    
    @IBAction func watchedButtonPressed(_ sender: UIButton) {
        
        watchedLabel.isSelected.toggle()
        watched = sender.isSelected
        
    }
    

}
