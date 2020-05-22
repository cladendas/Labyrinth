//
//  CreatorLabyrinth.swift
//  Labyrinth
//
//  Created by cladendas on 17.05.2020.
//  Copyright © 2020 cladendas. All rights reserved.
//

import Foundation
///!!! проработать, когда указано 1, 2, 3 комнаты
class CreatorLabyrinth {
    
    var rooms: [Room] = []
    
    func build(numberOfRooms: Int) {
        
        guard numberOfRooms > 1 else { return }
        
        var count = 0
        
        var length: Int { return numberOfRooms / 2 }
        var heigth: Int { return numberOfRooms - length }
        var Xmax: Int { return heigth - 1 }
        var Ymax: Int { return length - 1 }
        
        for y in 0...Ymax {
            for x in 0...Xmax {
                if count != numberOfRooms {
                    let room = Room()
                    room.coordinate = [x, y]
                    rooms.append(room)
                    count += 1
                    print(room.coordinate)
                }
            }
        }
        filling(numberOfRooms: numberOfRooms)
    }
    
    ///Заполнение комнат предметами
    func filling(numberOfRooms: Int) {
        
        let chest = Chest()
        let key = Key()
        
        rooms[Int.random(in: 1...numberOfRooms) - 1].things.append(chest)
        rooms[Int.random(in: 1...numberOfRooms) - 1].things.append(key)
    }
}
