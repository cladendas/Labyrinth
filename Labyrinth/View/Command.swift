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
    var yourHealth = "Your health = "
    
    var check = Check()
    var creatorLabyrinth = CreatorLabyrinth()
    var interpreter = Interpreter()
    
    var gamer = Gamer(health: 0)
    
    ///Команды на старте игры
    func startCommands() {
        print(welcome)
        print(enterName)

        //ввод имени
        let tmpName = readLine()
        
        //проверка имени
        let name = check.checkName(name: tmpName ?? "")
        
        print(name, enterNumberOfRooms)
        
        //ввод кол-ва комнат
        let tmpNumberOfRooms = readLine()

        //проверка введенного числа
        let numberOfRooms = check.checkNumberOfRooms(number: tmpNumberOfRooms ?? "")
        
        //создание игрока
        gamer = CreatorGamer().creator(name: name, numberOfRooms: numberOfRooms)
        
        print(yourHealth, gamer.health)
        
        //создание лабиринта
        creatorLabyrinth.build(numberOfRooms: numberOfRooms)
        
        creatorLabyrinth.rooms.forEach { (room) in
            print(room.things)
        }
        
        //получение стартовой комнаты
        let stRoom = creatorLabyrinth.rooms[creatorLabyrinth.currentRoom]
        
        while true {
            //описание комнаты
            description(of: stRoom)
            
            //получение команд
            getComand(in: stRoom)
        }
    }
    
    ///Описание комнаты
    func description(of room: Room) {
        print("You are in the room \(room.coordinate). There are \(room.doors.count) doors: \(room.doors). Items in the room: \(room.things)")
    }
    
    ///Получение команды
    func getComand(in room: Room) {
        
        print("Enter command!")
        
        let command = readLine()
        
        interpreter.interpretationOf(command: command ?? "")
    }
}
