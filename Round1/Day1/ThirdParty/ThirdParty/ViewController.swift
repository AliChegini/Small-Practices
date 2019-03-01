//
//  ViewController.swift
//  ThirdParty
//
//  Created by Ehsan on 01/03/2019.
//  Copyright © 2019 Ali C. All rights reserved.
//

import UIKit
import Nuke

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("we are ready")
        
        
        Nuke.loadImage(with: URL(string: "https://apod.nasa.gov/apod/image/1903/rolando-ligustri-C2018Y1_190227_FB_1551288721.jpg")!, into: imageView)
        
        
    }

    
    
    

}

