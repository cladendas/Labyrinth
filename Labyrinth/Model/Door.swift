//
//  Door.swift
//  Labyrinth
//
//  Created by cladendas on 16.05.2020.
//  Copyright © 2020 cladendas. All rights reserved.
//

import Foundation

enum Directions: String {
    case N = "N"
    case S = "S"
    case W = "W"
    case E = "E"
}

struct Door {
    var name: Directions
}
