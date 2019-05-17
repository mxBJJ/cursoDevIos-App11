//
//  ViewController.swift
//  Primeiro_App_Mapas
//
//  Created by Max Mendes on 17/05/19.
//  Copyright © 2019 Curso iOS. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var map: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let latitude:CLLocationDegrees = -30.049276
        let longitude:CLLocationDegrees = -51.228754
        let deltaLatitude:CLLocationDegrees = 0.009
        let deltaLongitude:CLLocationDegrees = 0.009
        
        let marker:MKPointAnnotation = MKPointAnnotation()
        
        let location: CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
        let areaVisualizacao: MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: deltaLatitude, longitudeDelta: deltaLongitude)
        
        let regiao: MKCoordinateRegion = MKCoordinateRegion(center: location, span: areaVisualizacao)
        
        map.setRegion(regiao, animated: true)
        marker.coordinate = location
        marker.title = "Shopping Praia de Belas"
        map.addAnnotation(marker)
        
        
        
    }


}

