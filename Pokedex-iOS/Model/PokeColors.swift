//
//  Colors.swift
//  Pokedex-iOS
//
//  Created by Gerson Arbigaus on 03/08/20.
//  Copyright © 2020 Gerson Arbigaus. All rights reserved.
//

import Foundation
import UIKit

class PokeColors {
    
    func getTypeColor(type color: PokeType) -> UIColor {
        switch color {
            case .bug:
                return UIColor(hexString: "#8CB230")
            case .dark:
                return UIColor(hexString: "#58575F")
            case .dragon:
                return UIColor(hexString: "#0F6AC0")
            case .electric:
                return UIColor(hexString: "#EED535")
            case .fairy:
                return UIColor(hexString: "#ED6EC7")
            case .fighting:
                return UIColor(hexString: "#D04164")
            case .fire:
                return UIColor(hexString: "#FD7D24")
            case .flying:
                return UIColor(hexString: "#748FC9")
            case .ghost:
                return UIColor(hexString: "#556AAE")
            case .grass:
                return UIColor(hexString: "#62B957")
            case .ground:
                return UIColor(hexString: "#DD7748")
            case .ice:
                return UIColor(hexString: "#61CEC0")
            case .normal:
                return UIColor(hexString: "#9DA0AA")
            case .poison:
                return UIColor(hexString: "#A552CC")
            case .psychic:
                return UIColor(hexString: "#EA5D60")
            case .rock:
                return UIColor(hexString: "#BAAB82")
            case .steel:
                return UIColor(hexString: "#417D9A")
            case .water:
                return UIColor(hexString: "#4A90DA")
        }
    }
    
    func getBackgroundColor(type color: PokeType) -> UIColor {
        switch color {
            case .bug:
                  return UIColor(hexString: "#8BD674")
            case .dark:
                  return UIColor(hexString: "#6F6E78")
            case .dragon:
                  return UIColor(hexString: "#7383B9")
            case .electric:
                  return UIColor(hexString: "#F2CB55")
            case .fairy:
                  return UIColor(hexString: "#EBA8C3")
            case .fighting:
                  return UIColor(hexString: "#EB4971")
            case .fire:
                  return UIColor(hexString: "#FFA756")
            case .flying:
                  return UIColor(hexString: "#83A2E3")
            case .ghost:
                  return UIColor(hexString: "#8571BE")
            case .grass:
                  return UIColor(hexString: "#8BBE8A")
            case .ground:
                  return UIColor(hexString: "#F78551")
            case .ice:
                  return UIColor(hexString: "#91D8DF")
            case .normal:
                  return UIColor(hexString: "#B5B9C4")
            case .poison:
                  return UIColor(hexString: "#9F6E97")
            case .psychic:
                  return UIColor(hexString: "#FF6568")
            case .rock:
                  return UIColor(hexString: "#D4C294")
            case .steel:
                  return UIColor(hexString: "#4C91B2")
            case .water:
                  return UIColor(hexString: "#58ABf6")
        }
    }
}

extension UIColor {
    convenience init(hexString: String, alpha: CGFloat = 1.0) {
        let hexString: String = hexString.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        let scanner = Scanner(string: hexString)
        if (hexString.hasPrefix("#")) {
            scanner.scanLocation = 1
        }
        var color: UInt32 = 0
        scanner.scanHexInt32(&color)
        let mask = 0x000000FF
        let r = Int(color >> 16) & mask
        let g = Int(color >> 8) & mask
        let b = Int(color) & mask
        let red   = CGFloat(r) / 255.0
        let green = CGFloat(g) / 255.0
        let blue  = CGFloat(b) / 255.0
        self.init(red:red, green:green, blue:blue, alpha:alpha)
    }
    func toHexString() -> String {
        var r:CGFloat = 0
        var g:CGFloat = 0
        var b:CGFloat = 0
        var a:CGFloat = 0
        getRed(&r, green: &g, blue: &b, alpha: &a)
        let rgb:Int = (Int)(r*255)<<16 | (Int)(g*255)<<8 | (Int)(b*255)<<0
        return String(format:"#%06x", rgb)
    }
}

