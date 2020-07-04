//
//  MovieDetailTableViewCell.swift
//  Movie List
//
//  Created by FGT MAC on 7/3/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

protocol WatchedStatusDelegate {
    func statusChanged(title: String, status:Bool)
}

class MovieDetailTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var TitleLabel: UILabel!
    @IBOutlet weak var watchedLabel: UIButton!
    
    //MARK: - Properties
    var delegate: WatchedStatusDelegate?
    

    //MARK: - Actions
    
    @IBAction func watchedButtonPressed(_ sender: UIButton) {
        
        watchedLabel.isSelected.toggle()
        delegate?.statusChanged(title: TitleLabel.text!, status: sender.isSelected)
        
    }
    

}
