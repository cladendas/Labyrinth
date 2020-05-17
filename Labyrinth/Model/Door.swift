//
//  Door.swift
//  Labyrinth
//
//  Created by cladendas on 16.05.2020.
//  Copyright © 2020 cladendas. All rights reserved.
//

import Foundation

enum Directions: String {
    case N
    case S
    case W
    case E
}

struct Door {
    var name: Directions
}
