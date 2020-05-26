//
//  Comand.swift
//  Labyrinth
//
//  Created by cladendas on 22.05.2020.
//  Copyright © 2020 cladendas. All rights reserved.
//

import Foundation
///!!! Надо настроить вывод комнат одной буквой

///Принимаемые от пользователя команды
class Command {
    
    var welcome = "Welcome to Labyrinth!"
    var enterName = "Enter your name..."
    var enterNumberOfRooms = "! Enter numbers of rooms..."
    
    var check = Check()
    var creatorLabyrinth = CreatorLabyrinth()
    var interpreter = Interpreter()
    
    ///Команды на старте игры
    func startCommands() {
        print(welcome)
        print(enterName)

        let name = readLine()

        print(check.checkName(name: name ?? ""), enterNumberOfRooms)
        
        let tmpNumberOfRooms = readLine()

        let numberOfRooms = check.checkNumberOfRooms(number: tmpNumberOfRooms ?? "")
        
        creatorLabyrinth.build(numberOfRooms: numberOfRooms)
        
        creatorLabyrinth.rooms.forEach { (room) in
            print(room.things)
        }
        
        let stRoom = creatorLabyrinth.rooms[creatorLabyrinth.startRoom]
        
        description(of: stRoom)
        
        getComand(in: stRoom)
    }
    
    ///Описание комнаты
    func description(of room: Room) {
        print("You are in the room \(room.coordinate). There are \(room.doors.count) doors: \(room.doors). Items in the room: \(room.things)")
    }
    
    func getComand(in room: Room) {
        
        print("Enter command!")
        
        let tt = readLine()
        
        //переход в другую комнату
        if room.doors.contains(where: { door -> Bool in door.name == tt }) {
            print("выбрал дверь")
        }
        
        //положить в рюкзак
        if room.things.contains(where: { thing -> Bool in thing.name == tt }) {
            print("поднял вещь")
        }
    }
}
