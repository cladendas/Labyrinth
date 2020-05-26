//
//  Check.swift
//  Labyrinth
//
//  Created by cladendas on 17.05.2020.
//  Copyright © 2020 cladendas. All rights reserved.
//

import Foundation

///Проверяет, введёеные данные
class Check {
    
    ///Проверка, что пользователь ввёл целое положительное целое число большее нуля
    func checkNumberOfRooms(number: String) -> Int{
        
        if let tmpNumber = Int(number) {
            if tmpNumber > 0 {
                return tmpNumber
            }
        }
        print("Необходимо ввести целое положительное число большее нуля")
        return 0
    }
    
    ///Если пользователь не введёт имя, то будет присвоено "adventurer"
    func checkName(name: String) -> String {
        let noName = "adventurer" //используется, если игрок не введёт имя
        
        if name == "" {
            return noName
        }
        return name
    }
}
