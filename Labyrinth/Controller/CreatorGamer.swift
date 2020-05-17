//
//  CreatorGamer.swift
//  Labyrinth
//
//  Created by cladendas on 17.05.2020.
//  Copyright © 2020 cladendas. All rights reserved.
//

import Foundation

class CreatorGamer {
    
    func creator(name: String, numberOfRooms: Int) -> Gamer {
        
        let health = numberOfRooms + 4
        
        let gamer = Gamer(name: name, health: health)
        
        return gamer
    }
}
