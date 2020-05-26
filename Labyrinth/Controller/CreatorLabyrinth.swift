//
//  CreatorLabyrinth.swift
//  Labyrinth
//
//  Created by cladendas on 17.05.2020.
//  Copyright © 2020 cladendas. All rights reserved.
//

import Foundation
///!!! проработать, когда указано 1, 2, 3 комнаты
///!!! проработать последнюю комнату
class CreatorLabyrinth {
    
    var rooms: [Room] = []
    var currentRoom: Int = 0
    var creatorRooms: CreatorRooms = CreatorRooms()
    
    func build(numberOfRooms: Int) {
        
        guard numberOfRooms > 1 else { return }
        
        var count = 0
        
        var length: Int { return numberOfRooms / 2 }
        var heigth: Int { return numberOfRooms - length }
        var Xmax: Int { return heigth - 1 }
        var Ymax: Int { return length - 1 }
        
//        print("Xmax", Xmax)
//        print("Ymax", Ymax)
        
        for y in 0...Ymax {
            for x in 0...Xmax {
                if count != numberOfRooms {
                    let room = Room()
                    room.coordinate = [x, y]
                
                    room.doors = creatorRooms.buildDoors(roomCoordinate: room.coordinate, maxX: Xmax, maxY: Ymax)
//                    room.doors.forEach { (door) in
//                        print(door.name.self)
//                    }
                    
                    rooms.append(room)
                    count += 1
//                    print(room.coordinate)
                }
            }
        }
        filling(numberOfRooms: numberOfRooms)
        start(numberOfRooms: numberOfRooms)
        
    }
    
    ///Заполнение комнат предметами
    /// - Parameters numberOfRooms: Кол-во комнат. Будет использовано, чтобы расположить предметы по комнатам в массиве комнат по случайному индексу
    func filling(numberOfRooms: Int) {
        
        let chest = Chest()
        let key = Key()
        
        rooms[Int.random(in: 1...numberOfRooms) - 1].things.append(chest)
        rooms[Int.random(in: 1...numberOfRooms) - 1].things.append(key)
    }
    
    ///Ииндекс стартовой комнаты
    func start(numberOfRooms: Int) {
        currentRoom = Int.random(in: 1...numberOfRooms) - 1
    }
}
