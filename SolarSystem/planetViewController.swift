//
//  planetViewController.swift
//  SolarSystem
//
//  Created by John Tate on 8/21/18.
//  Copyright © 2018 John Tate. All rights reserved.
//

import UIKit

class planetViewController: UIViewController {

    @IBOutlet weak var planetName: UILabel!
    @IBOutlet weak var planetImage: UIImageView!
    @IBOutlet weak var planetDistance: UILabel!
    @IBOutlet weak var planetDayLength: UILabel!
    @IBOutlet weak var planetDiameter: UILabel!
    
    // Landing pad
    var planet: Planet?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateView()
    
    }

    func updateView() {
        guard let planet = planet else { return }
        planetName.text = planet.name
        planetImage.image = UIImage(named: planet.name.lowercased())
        planetDistance.text = String(planet.millionKMsFromSun)
        planetDayLength.text = String(planet.dayLength)
        planetDiameter.text = String(planet.diameter)
        
    }
    

}
