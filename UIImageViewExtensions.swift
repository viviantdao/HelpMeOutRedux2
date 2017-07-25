//
//  UIImageViewExtensions.swift
//  HelpMeOut
//
//  Created by Young Tech on 7/24/17.
//  Copyright © 2017 Young Tech. All rights reserved.
//

import Foundation
import UIKit

extension UIImageView {
    
    func setRoundedCorners(borderWidth: CGFloat = 1, borderColor:UIColor = .white){
        
        self.layer.borderWidth = borderWidth
        self.layer.borderColor = borderColor.cgColor
        self.layer.cornerRadius = self.frame.width / 3
        self.layer.masksToBounds = true
    }
}
