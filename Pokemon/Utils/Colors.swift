//
//  Colors.swift
//  Pokemon
//
//  Created by juliana.loaiza on 8/30/18.
//  Copyright © 2018 juliana.loaiza. All rights reserved.
//

import UIKit

enum Colors {
    case green
    case blue
    case white
    case yellow
    
    var raw: UIColor{
        switch self {
        case .blue:
            return UIColor.blue
        case .white:
            return UIColor.white
        case .yellow:
            return UIColor.yellow
        case .green:
            return UIColor.green
        }
    }
}
