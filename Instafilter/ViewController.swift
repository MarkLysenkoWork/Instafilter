//
//  ViewController.swift
//  Instafilter
//
//  Created by Mark (WorkProfile) on 12.09.2020.
//  Copyright © 2020 Mark (WorkProfile). All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var intensity: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func changeFilter(_ sender: Any) {
    }
    
    @IBAction func save(_ sender: UIButton) {
    }
    
    @IBAction func intensityChanged(_ sender: UISlider) {
    }
}

