//
//   Interpreter.swift
//  Labyrinth
//
//  Created by cladendas on 23.05.2020.
//  Copyright © 2020 cladendas. All rights reserved.
//

import Foundation

///Интерпертирует команды
class Interpreter {
    var room = Room()
    var gamer = Gamer(health: 0)
    var rooms: [Room] = []
    let creatorGamer = CreatorGamer()
    var creatorLabyrinth = CreatorLabyrinth()
    
    func creatorGamer(name: String, numberOfRooms: Int) {
        gamer = creatorGamer.creator(name: name, numberOfRooms: numberOfRooms)
    }

    func createLabyrinth(numberOfRooms: Int) {
        creatorLabyrinth.build(numberOfRooms: numberOfRooms)
        rooms = creatorLabyrinth.rooms
        room = creatorLabyrinth.rooms[creatorLabyrinth.currentRoom]
    }
    
    func interpretationOf(command: String) {
        //переход в другую комнату
        if room.doors.contains(where: { door -> Bool in door.name == command }) {
            print("дверь")
            move(to: command)
        }

        //положить в рюкзак
        for (index, thing) in room.things.enumerated() {
            if thing.name == command {
                room.things.remove(at: index)
                room.things.append(thing)
                print("положил в рюкзак")
            }
        }
          
        //открыть сундук
        if room.things.contains(where: { thing -> Bool in thing.name == String(describing: Chest.self)}) {
            if command == "open" {
                print("You win!")
            }
        }
        
        //выбросить предмет
        if command == "drop" {
            print("What are you want to drop?")
                
            let tmpCommand = readLine()
            
            gamer.inventory.removeAll { thing -> Bool in
                thing.name == tmpCommand
            }
        }
        //перейти в комнату
        move(to: command)
    }

    //смена комнаты
    func move(to: String) {
        for room in rooms {
            //на восток
            if room.coordinate[0] == self.room.coordinate[0] + 1 && room.coordinate[1] == self.room.coordinate[1] && to == "E" {
                self.room = room
                print("выбрал восток")
                break
            }
            //на запад
            if room.coordinate[0] == self.room.coordinate[0] - 1 && room.coordinate[1] == self.room.coordinate[1] && to == "W" {
                self.room = room
                print("выбрал запад")
                break
            }
            //на север
            if room.coordinate[0] == self.room.coordinate[0] && room.coordinate[1] == self.room.coordinate[1] + 1 && to == "N" {
                self.room = room
                print("выбрал север")
                break
            }
            //на юг
            if room.coordinate[0] == self.room.coordinate[0] && room.coordinate[1] == self.room.coordinate[1] - 1 && to == "S" {
                self.room = room
                print("выбрал юг")
                break
            }
        }
    }
}
