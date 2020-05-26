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
    let room = Room()
    let gamer = Gamer(health: 0)
    
    func interpretationOf(command: String) {
        //переход в другую комнату
        if room.doors.contains(where: { door -> Bool in door.name == command }) {
            print("выбрал дверь")
        }

        //положить в рюкзак
        if room.things.contains(where: { thing -> Bool in thing.name == command }) {
            print("поднял вещь")
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
    }
    
    func move(to: String) {
        
    }
}
