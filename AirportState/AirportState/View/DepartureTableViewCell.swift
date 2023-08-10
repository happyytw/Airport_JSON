//
//  DepartureTableViewCell.swift
//  AirportState
//
//  Created by Taewon Yoon on 2023/07/25.
//

import UIKit

class DepartureTableViewCell: UITableViewCell {

    @IBOutlet var t0: UILabel!
    @IBOutlet var t1: UILabel!
    @IBOutlet var t2: UILabel!
    @IBOutlet var t3: UILabel! // 원래 시간
    @IBOutlet var t4: UIButton! // state
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        t4.layer.cornerRadius = 10
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
