//
//  Comand.swift
//  Labyrinth
//
//  Created by cladendas on 22.05.2020.
//  Copyright © 2020 cladendas. All rights reserved.
//

import Foundation

class Command {
    
    var welcome = "Welcome to Labyrinth!"
    var enterName = "Enter your name..."
    var enterNumberOfRooms = "! Enter numbers of rooms..."
    
    var check = Check()
    var creatorLabyrinth = CreatorLabyrinth()
    
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
    }
}
