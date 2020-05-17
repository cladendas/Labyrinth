//
//  main.swift
//  Labyrinth
//
//  Created by cladendas on 17.05.2020.
//  Copyright © 2020 cladendas. All rights reserved.
//

import Foundation

var welcome = "Welcome to Labyrinth!"
var enterName = "Enter your name..."
var enterNumberOfRooms = "! Enter numbers of rooms..."

var check = Check()

print(welcome)
print(enterName)

var name = readLine()

print(check.checkName(name: name ?? ""), enterNumberOfRooms)

var tmpNumberOfRooms = readLine()

var numberOfRooms = check.checkNumberOfRooms(number: tmpNumberOfRooms ?? "")

var creatorLabyrinth = CreatorLabyrinth()
creatorLabyrinth.build(numberOfRooms: numberOfRooms)

creatorLabyrinth.rooms.forEach { (room) in
    print(room.things)
}
