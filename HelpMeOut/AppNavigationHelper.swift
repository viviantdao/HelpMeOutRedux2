//
//  AppNavigationHelper.swift
//  HelpMeOut
//
//  Created by Young Tech on 7/23/17.
//  Copyright © 2017 Young Tech. All rights reserved.
//

import Foundation
import UIKit

extension AppDelegate {
    
    enum LaunchViewController {
        
        case Login, Main
        
        var viewController: UIViewController {
            switch self {
            case .Login:
                return UIViewController.GetInstance(for: LoginSelector.self)!
            case .Main:
                return UIViewController.GetInstance(for: MapPage.self)!
            }
        }
        
        func SetAsRootViewController(animated: Bool = true){
            
            let appDelegate = UIApplication.shared.delegate as! AppDelegate
            let window = appDelegate.window ?? UIWindow(frame: UIScreen.main.bounds)
            
            window.rootViewController = viewController
            window.makeKeyAndVisible()
        }
    }
    
    
}
