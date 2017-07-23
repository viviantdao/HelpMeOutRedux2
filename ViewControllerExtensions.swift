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
    
    static func GetInstance<T>(for: T.Type)->T?{
        
        let className = String(describing: T.self)
        let storyboard = UIStoryboard(name: className, bundle: nil)
        return storyboard.instantiateViewController(withIdentifier: className) as? T
        
    }
}
