//
//  LoadingOverlay.swift
//  HelpMeOut
//
//  Created by Young Tech on 7/23/17.
//  Copyright © 2017 Young Tech. All rights reserved.
//

import Foundation
import UIKit

class LoadingOverlay {
    
    let overlayView:UIView!
    let activityIndicator:UIActivityIndicatorView!

    init(){
        self.overlayView = UIView()
        self.activityIndicator = UIActivityIndicatorView()
        
        overlayView.frame = CGRect(x:0, y:0, width:80, height:80)
        overlayView.backgroundColor = UIColor(white: 0, alpha: 0.7)
        overlayView.clipsToBounds = true
        overlayView.layer.cornerRadius = 10
        overlayView.layer.zPosition = 1
        
        activityIndicator.frame = CGRect(x:0, y:0, width:40, height: 40)
        activityIndicator.center = CGPoint(x:overlayView.bounds.width / 2, y:overlayView.bounds.height / 2)
        activityIndicator.activityIndicatorViewStyle = .whiteLarge
        overlayView.addSubview(activityIndicator)
    }
    
    public func showOverlay(view: UIView) {
        overlayView.center = view.center
        view.addSubview(overlayView)
        activityIndicator.startAnimating()
    }
    
    public func hideOverlayView() {
        activityIndicator.stopAnimating()
        overlayView.removeFromSuperview()
    }
}
