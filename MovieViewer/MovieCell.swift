//
//  MovieCell.swift
//  MovieViewer
//
//  Created by SongYuda on 1/31/17.
//  Copyright © 2017 SongYuda. All rights reserved.
//

import UIKit

class MovieCell: UITableViewCell {

    @IBOutlet weak var posterView: UIImageView!
    @IBOutlet weak var OverviewLabel: UILabel!
    @IBOutlet weak var TitleLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
