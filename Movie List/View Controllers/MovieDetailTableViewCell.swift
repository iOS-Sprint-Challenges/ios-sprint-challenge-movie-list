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
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    @IBAction func watchedButtonPressed(_ sender: UIButton) {
        print("Button pressed!")
    }
    

}
