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
var noName = "adventurer" //используется, если игрок не введёт имя
var errorEnterNumer = "Необходимо ввести целое положительное число"

var check = Check()

print(welcome)
print(enterName)

var name = readLine()

print(check.checkName(name: name ?? ""), enterNumberOfRooms)

var numberOfRooms = readLine()

check.checkNumberOfRooms(number: numberOfRooms ?? "0")

var creatorLabyrinth = CreatorLabyrinth()
creatorLabyrinth.build(numberOfRooms: 2)
