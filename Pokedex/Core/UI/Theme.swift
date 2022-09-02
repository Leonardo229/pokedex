//
//  Theme.swift
//  Pokedex
//
//  Created by Leonardo Coelho on 10/08/22.
//

import Foundation
import UIKit

protocol AppShapes {
    var small: CGFloat { get set }
    var medium: CGFloat { get set }
    var large: CGFloat { get set }
}

struct ThemeData {
    var shapes: AppShapes
}

let APP_THEME = ThemeData(
    shapes: Shape()
)
