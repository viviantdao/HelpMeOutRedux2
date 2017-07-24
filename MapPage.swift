//
//  MapPage.swift
//  HelpMeOut
//
//  Created by Young Tech on 7/23/17.
//  Copyright © 2017 Young Tech. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation


class MapPage: UIViewController, CLLocationManagerDelegate {

    
    @IBOutlet weak var mapView: MKMapView!
    
    var locationManager: CLLocationManager!
    var lastLocation : CLLocationCoordinate2D!
    
    override func viewWillAppear(_ animated: Bool) {
        
        super.viewWillAppear(animated)
        
        mapView.delegate = self as? MKMapViewDelegate
        self.locationManager = CLLocationManager()
        checkLocationAuthorizationStatus()
        centerMapOnUserLocation()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func helpMeOutButtonClick(_ sender: UIButton) {
    }
    
    
    //======Map Functions==============
    func mapView(_ mapView: MKMapView, didUpdate userLocation: MKUserLocation) {
        
        let annotations = [mapView.userLocation]
        mapView.showAnnotations(annotations, animated: true)
        
    }
    
    func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView) {
        
        let annotations = [mapView.userLocation, view.annotation]
        mapView.showAnnotations(annotations as! [MKAnnotation], animated: true)
        if let annotation = view.annotation {
            if let title = annotation.title! {
                print("Tapped \(title) pin")
            }
        }
    }
    
    
    func centerMapOnUserLocation() {
        
        let regionRadiusInMeters: CLLocationDistance = 500
       // let location = mapView.userLocation
        
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(CLLocation(latitude: 47.643653, longitude: -122.122407).coordinate, regionRadiusInMeters * 2.0, regionRadiusInMeters * 2.0)
        
        mapView.setRegion(coordinateRegion, animated: true)
        
    }
    
    func checkLocationAuthorizationStatus() {
        
        if CLLocationManager.authorizationStatus() == .authorizedWhenInUse {
            mapView.showsUserLocation = true
        } else {
            locationManager.requestWhenInUseAuthorization()
        }
        
    }

}
