//
//  Gamer.swift
//  Labyrinth
//
//  Created by cladendas on 16.05.2020.
//  Copyright © 2020 cladendas. All rights reserved.
//

import Foundation

class Gamer {
    ///Имя игрока
    var name: String
    
    ///Здоровье (кол-во шагов) игрока
    var health: Int = 0
    
    ///Инвентарь в рюкзаке игрока
    var inventory = [Items]()
    
    init(name: String = "adventurer", health: Int) {
        self.name = name
        self.health = health
    }
    
    ///Кладёт в рюкзак выбранный объект
    ///
    /// - Parameter thing: Предмет, который необходимо положить в рюкзак
    func get(item: Items) {
        inventory.append(item)
    }
    
    ///Удаляет из рюкзака выбранный объект
    ///
    /// - Parameter thing: Предмет, который необходимо удалить из рюкзака
    func drop(item: Items) {
        inventory.removeAll(where: {$0.name == item.name})
    }
    
    ///Двигаться в выбранную сторону
    ///
    /// - Parameter to: Сторона, в которую необходимо двигаться
    func go(to: String) {
        
    }
    
    ///Открыть сундук
    func open() {
        
    }
}
