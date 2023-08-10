//
//  SearchCitiesTableViewCell.swift
//  AirportState
//
//  Created by Taewon Yoon on 2023/07/27.
//

import UIKit

class SearchCitiesTableViewCell: UITableViewCell {

    @IBOutlet var cityName: UILabel!
    @IBOutlet var ContryName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
