//
//  CreatorLabyrinth.swift
//  Labyrinth
//
//  Created by cladendas on 17.05.2020.
//  Copyright © 2020 cladendas. All rights reserved.
//

import Foundation

class CreatorLabyrinth {
    
    func build(numberOfRooms: Int) {
        var Xmax: Int {
            numberOfRooms / 2 - 1
        }
        
        var Ymax: Int {
            numberOfRooms % Xmax - 1
        }
        
        var length: Int {
            numberOfRooms / 2
        }
        
        var heigth: Int {
            numberOfRooms / Xmax + numberOfRooms % Xmax
        }
    }
}
