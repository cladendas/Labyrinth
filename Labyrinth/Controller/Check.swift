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
    func checkNumberOfRooms(number: String) -> Int{
        
        if let tmpNumber = Int(number) {
            if tmpNumber > 0 {
                print("Урааа!!!")
                return tmpNumber
            }
        }
        print("Необходимо ввести целое положительное число")
        return 0
    }
    
    func checkName(name: String) -> String {
        let noName = "adventurer" //используется, если игрок не введёт имя
        
        if name == "" {
            return noName
        }
        return name
    }
}
