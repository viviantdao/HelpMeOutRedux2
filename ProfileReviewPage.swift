//
//  ProfileReviewPage.swift
//  HelpMeOut
//
//  Created by Young Tech on 7/24/17.
//  Copyright © 2017 Young Tech. All rights reserved.
//

import UIKit

class ProfileReviewPage: UITableViewController {

    let reviews = UserProfileService.Instance.GetLoggedInUser().Reviews!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return reviews.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "profileReviewCell", for: indexPath) as! ProfileReviewTableViewCell
        cell.SetFromReviewModel(review: reviews[indexPath.row])
        return cell
    }
    

   
}
