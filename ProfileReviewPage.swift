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
    let time = UserProfileService.Instance.GetLoggedInUser().Time
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.title = "\(time) minutes"
    }
    
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
        cell.profileImage.setRoundedCorners(borderWidth: 2, borderColor: UIColor(hex: "#0CAADC"))
        return cell
    }
    

   
}
