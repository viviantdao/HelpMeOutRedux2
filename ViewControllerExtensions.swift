//
//  ViewControllerExtensions.swift
//  HelpMeOut
//
//  Created by Young Tech on 7/22/17.
//  Copyright © 2017 Young Tech. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    
    static func GetInstanceFor<T>()->T?{
        
        let className = String(describing: self)
        let storyboard = UIStoryboard(name: className, bundle: nil)
        return storyboard.instantiateViewController(withIdentifier: className) as? T
        
    }
}
