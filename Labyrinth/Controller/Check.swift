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
    
    ///Проверка, что пользователь ввёл целое положительное целое число
    func checkNumberOfRooms(number: String) {
        
        let tmpNumber = Int(number)
        
        switch tmpNumber {
            case _ as Int where tmpNumber! > 0:
                print("Урааа!!!")
        default:
            print("Необходимо ввести целое положительное число")
        }
    }
    
    func checkName(name: String) -> String {
        let noName = "adventurer" //используется, если игрок не введёт имя
        
        if name == "" {
            return noName
        }
        return name
    }
}
