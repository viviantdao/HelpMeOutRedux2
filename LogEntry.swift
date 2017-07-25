//
//  LogEntry.swift
//  HelpMeOut
//
//  Created by Young Tech on 7/25/17.
//  Copyright © 2017 Young Tech. All rights reserved.
//

import Foundation

class LogEntry {
    
    let user: String
    let time: Int
    let taskName: String
    let rating: Int
    
    init(user: String, time:Int, taskName: String, rating: Int){
        self.user = user
        self.time = time
        self.taskName = taskName
        self.rating = rating
    }
}
