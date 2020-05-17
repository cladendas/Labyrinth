//
//  Labyrinth.swift
//  Labyrinth
//
//  Created by cladendas on 16.05.2020.
//  Copyright © 2020 cladendas. All rights reserved.
//

import Foundation

class Labyrinth {
    var rooms: [Room] = []
    
    var numberOfRooms: Int = 0
    
    var length: Int {
        numberOfRooms / 2
    }
    
    var heigth: Int {
        numberOfRooms / Xmax + numberOfRooms % Xmax
    }
    
    var Xmax: Int {
        numberOfRooms / 2 - 1
    }
    
    var Ymax: Int {
        numberOfRooms % Xmax - 1
    }
}
