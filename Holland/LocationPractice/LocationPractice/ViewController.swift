//
//  ViewController.swift
//  LocationPractice
//
//  Created by Ehsan on 30/07/2019.
//  Copyright © 2019 Ali C. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController, LocationManagerDelegate {
    
    
    private let manager = LocationManager()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        manager.delegate = self
        manager.setupGeoFence(latitude: 55.5555, longitude: 12.34243, locationName: "home")
        
    }

}

extension ViewController {
    func locationManager(_ manager: CLLocationManager, didEnterRegion region: CLRegion) {
        print("did enter region: \(region)")
    }
    
    func locationManager(_ manager: CLLocationManager, didExitRegion region: CLRegion) {
        print("did exit region: \(region)")
    }
}

