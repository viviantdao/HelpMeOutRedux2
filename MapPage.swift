import UIKit
import MapKit
import CoreLocation

class MapPage: UIViewController,CLLocationManagerDelegate {
    
    
    @IBOutlet weak var helpRequest: UIButton!
    @IBOutlet weak var mapView: MKMapView!
    var locationManager: CLLocationManager!
    var lastLocation : CLLocationCoordinate2D!
    
    let initialLocation = CLLocation(latitude: 47.643860, longitude: -122.122364) //Microsoft Bldg 31
    let regionRadiusInMeters: CLLocationDistance = 500
    let annotation = MKPointAnnotation() //Microsoft Bldg 32
    let annotation2 = MKPointAnnotation() // Microsoft Bldg 33
    let annotation3 = MKPointAnnotation() //Microsoft Conference Center
    let annotation4 = MKPointAnnotation() // In.gredients Restaurant
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.title = "\(UserProfileService.Instance.GetLoggedInUser().Time) minutes"
    }
    
    func centerMapOnLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate, regionRadiusInMeters * 2.0, regionRadiusInMeters * 2.0)
        mapView.setRegion(coordinateRegion, animated: true)
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        checkLocationAuthorizationStatus()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mapView.delegate = self
        centerMapOnLocation(location: initialLocation)
        self.locationManager = CLLocationManager()
        
        annotation.coordinate = CLLocationCoordinate2D(latitude: 47.643053, longitude: -122.121434)
        mapView.addAnnotation(annotation)
        annotation.title = "Microsoft Building 32"
        annotation.subtitle = "People work here"
        
        
        annotation2.coordinate = CLLocationCoordinate2D(latitude: 47.644311, longitude: -122.122035)
        mapView.addAnnotation(annotation2)
        annotation2.title = "Microsoft Cafe 30"
        annotation2.subtitle = "People eat here"
        
        annotation3.coordinate = CLLocationCoordinate2D(latitude: 47.643007, longitude: -122.125475)
        mapView.addAnnotation(annotation3)
        annotation3.title = "Microsoft Conference Center"
        annotation3.subtitle = "People do business here"
        
        annotation4.coordinate = CLLocationCoordinate2D(latitude: 47.344901, longitude: -122.124488)
        mapView.addAnnotation(annotation4)
        annotation4.title = "In.gredients Restaurant"
        annotation4.subtitle = "People eat here"
        
    }
    
    
    
    // ==============================
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
    
    
    
    func checkLocationAuthorizationStatus() {
        if CLLocationManager.authorizationStatus() == .authorizedWhenInUse {
            mapView.showsUserLocation = true
        } else {
            locationManager.requestWhenInUseAuthorization()
        }
    }
}
