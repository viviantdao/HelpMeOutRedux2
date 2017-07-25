//
//  LogPageTableCell.swift
//  HelpMeOut
//
//  Created by Young Tech on 7/25/17.
//  Copyright © 2017 Young Tech. All rights reserved.
//

import UIKit
import Cosmos

class LogPageTableCell: UITableViewCell {

    
    @IBOutlet weak var helpedLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var taskLabel: UILabel!
    @IBOutlet weak var starRating: CosmosView!
    
    public func MakeFromModel(entry: LogEntry){
        self.helpedLabel.text = "Helped: \(entry.user)"
        self.timeLabel.text = "Time: \(entry.time / 60) hr \(entry.time % 60) min"
        self.taskLabel.text = "Task: \(entry.taskName)"
        self.starRating.rating = Double(entry.rating)
    }
}
