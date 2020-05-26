//
//  CreatorRooms.swift
//  Labyrinth
//
//  Created by cladendas on 22.05.2020.
//  Copyright © 2020 cladendas. All rights reserved.
//

import Foundation

class CreatorRooms {
    ///Установка дверей
    func buildDoors(roomCoordinate: [Int], maxX: Int, maxY: Int) -> [Door]{
        
        var doors: [Door] = []
        
        if (roomCoordinate.first! + 1) <= maxX {
            doors.append(Door(name: "N"))
        }
        if (roomCoordinate.last! + 1) <= maxY {
            doors.append(Door(name: "N"))
        }
        if (roomCoordinate.first! - 1) >= 0 {
            doors.append(Door(name: "W"))
        }
        if (roomCoordinate.last! - 1) >= 0 {
            doors.append(Door(name: "S"))
        }
        return doors
    }
}
