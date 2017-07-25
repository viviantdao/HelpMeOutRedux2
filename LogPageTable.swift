//
//  LogPageTable.swift
//  HelpMeOut
//
//  Created by Young Tech on 7/25/17.
//  Copyright © 2017 Young Tech. All rights reserved.
//

import UIKit
import QuartzCore

class LogPageTable: UITableViewController {

    let entries = UserProfileService.Instance.GetLoggedInUser().LogEntries!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return entries.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "entryCell", for: indexPath) as! LogPageTableCell

        cell.MakeFromModel(entry: entries[indexPath.row])
        
        return cell
    }
    

}
