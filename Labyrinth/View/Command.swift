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
    var interpreter = Interpreter()
    
    
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
        interpreter.creatorGamer(name: name, numberOfRooms: numberOfRooms)
        
        print(yourHealth, interpreter.gamer.health)
        
        //создание лабиринта
        interpreter.createLabyrinth(numberOfRooms: numberOfRooms)
        
        while true {
            //описание комнаты
            description(of: interpreter.room)
            
            //получение команд
            getComand(in: interpreter.room)
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
