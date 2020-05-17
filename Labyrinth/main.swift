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
var enterNumbersOfRooms = "Enter numbers of rooms..."
var noName = "adventurer" //используется, если игрок не введёт имя

print(welcome)
print(enterName)

var name = readLine()

print(name == "" ? "\(noName)!" : "\(name!)!", enterNumbersOfRooms)

var numbersOfRooms = readLine()
