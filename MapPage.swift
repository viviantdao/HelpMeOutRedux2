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

//TODO: Refactor and fix this

class MapPage: UIViewController, CLLocationManagerDelegate {

    
    @IBOutlet weak var mapView: MKMapView!
    
    var locationManager: CLLocationManager!
    var lastLocation : CLLocationCoordinate2D!
    let artwork = Artwork(title: "King David Kalakaua",
                          locationName: "Waikiki Gateway Park",
                          discipline: "Sculpture",
                          coordinate: CLLocationCoordinate2D(latitude: 21.283921, longitude: -157.831661))
    
    func addPin() { //drop pins at locations
        let annotation = MKPointAnnotation()
        let locationCoordinate = CLLocationCoordinate2D(latitude: 47.673988, longitude: -122.121513)
        annotation.coordinate = locationCoordinate
        annotation.title = "Founders Den"
        mapView.addAnnotation(annotation)
    }
    
    
    override func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView { //custom images for map annotations
        let reuseID = "myAnnotationView"
        var annotationView = mapView.dequeueReusableAnnotationView(withIdentifier: reuseID)
        if annotationView == nil {
            annotationView = MKAnnotationView(annotation: annotation, reuseIdentifier: reuseID)
            /// show the callout "bubble" when annotation view is selected
            annotationView?.canShowCallout = true
        }
        
        /// Set the "pin" image of the annotation view
        let pinImage = UIImage(named: "pin")
        annotationView?.image = pinImage
        
        /// Add an info button to the callout "bubble" of the annotation view
        let rightCalloutButton = UIButton(type: .detailDisclosure)
        annotationView?.rightCalloutAccessoryView = rightCalloutButton
        
        /// Add image to the callout "bubble" of the annotation view
        let image = UIImage(named: "founders_den")
        let leftCalloutImageView = UIImageView(image: image)
        annotationView?.leftCalloutAccessoryView = leftCalloutImageView
        
        return annotationView!
    }
    
    override func viewDidLoad() { //centralize map view at coordinates (Redmond, WA)
        super.viewDidLoad()
        self.mapView.delegate = (self as MKMapViewDelegate)
        self.mapView.showsUserLocation = true
        mapView.addAnnotation(artwork)
        
        
        
        self.locationManager = CLLocationManager() // request to use client's infromation
        self.locationManager.requestWhenInUseAuthorization()
        self.locationManager.delegate = self
        self.locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters // how far until user receives new updates
        self.locationManager.distanceFilter = 100
        self.locationManager.requestAlwaysAuthorization()
        
        // Center the map's region at specific location
        let mapCenter = CLLocationCoordinate2D(latitude: 47.673988, longitude: -122.121513)
        let mapSpan = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
        let region = MKCoordinateRegion(center: mapCenter, span: mapSpan)
        
        
        // Set animated property to true to animate the transition to the region
        self.mapView.setRegion(region, animated: true) //-- false
    }
    
    //show user's location on map
    //updates center of map to be user's location
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
    
    //starts getting user's information
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        if status == CLAuthorizationStatus.authorizedWhenInUse {
            manager.startUpdatingLocation()
        }
    }
    
    func locationManager(manager: CLLocationManager!, didUpdateLocations locations: [AnyObject]!) {
        let location = locations.first as? CLLocation
        lastLocation = location?.coordinate
    }
    
}
