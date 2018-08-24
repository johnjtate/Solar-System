//
//  Planet.swift
//  SolarSystem
//
//  Created by John Tate on 8/21/18.
//  Copyright © 2018 John Tate. All rights reserved.
//

import Foundation

class Planet {
    
    init(name: String, diameter: Int, dayLength: Float, millionKMsFromSun: Float) {
        
        self.name = name
        self.imageName = name.lowercased()
        self.diameter = diameter
        self.dayLength = dayLength
        self.millionKMsFromSun = millionKMsFromSun
    }
    
    let name: String
    let imageName: String
    let diameter: Int
    let dayLength: Float
    let millionKMsFromSun: Float
}
