//
//  ViewController.swift
//  LocationPractice
//
//  Created by Ehsan on 17/04/2019.
//  Copyright © 2019 Ali C. All rights reserved.
//

import UIKit
import CoreLocation

final class ViewController: UIViewController {
    
    private let manager = LocationManager()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        manager.delegate = self
        manager.setupGeoFence(latitude: 55.55555, longitude: 12.34234, locationName: "home")
        
    }

    
}


extension ViewController: LocationManagerDelegate {
    
    func locationManager(_ locationManager: CLLocationManager, didEnterRegion region: CLRegion) {
        print("did enter region: \(region)")
    }
    
    func locationManager(_ locationManager: CLLocationManager, didExitRegion region: CLRegion) {
        print("did exit region: \(region)")
    }
}




