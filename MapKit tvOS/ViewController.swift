//
//  ViewController.swift
//  ghhghhh
//
//  Created by Nicolas on 12/01/2016.
//  Copyright © 2016 Nicolas. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController
{
    @IBOutlet var mv: MKMapView?
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        let METERS_PER_MILE = 1609.344
        
        // Do any additional setup after loading the view, typically from a nib.
        let zoomLocation = CLLocationCoordinate2D(latitude:45.7555, longitude:4.843)
        
        // 2
        let viewRegion = MKCoordinateRegionMakeWithDistance(zoomLocation, 0.5*METERS_PER_MILE, 0.5*METERS_PER_MILE);
        
        // 3
        mv?.setRegion(viewRegion, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

