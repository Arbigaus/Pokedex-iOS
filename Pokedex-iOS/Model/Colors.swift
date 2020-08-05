//
//  Colors.swift
//  Pokedex-iOS
//
//  Created by Gerson Arbigaus on 03/08/20.
//  Copyright © 2020 Gerson Arbigaus. All rights reserved.
//

import Foundation

enum TypeColors {
    case bug
    case dark
    case dragon
    case electric
    case fairy
    case fighting
    case fire
    case flying
    case ghost
    case grass
    case ground
    case ice
    case normal
    case poison
    case psychic
    case rock
    case steel
    case water
}


class Colors {
    
    func getTypeColor(_ color: TypeColors) -> String {
        switch color {
            case .bug:
                return "#8CB230"
            case .dark:
                return "#58575F"
            case .dragon:
                return "#0F6AC0"
            case .electric:
                return "#EED535"
            case .fairy:
                return "#ED6EC7"
            case .fighting:
                return "#D04164"
            case .fire:
                return "#FD7D24"
            case .flying:
                return "#748FC9"
            case .ghost:
                return "#556AAE"
            case .grass:
                return "#62B957"
            case .ground:
                return "#DD7748"
            case .ice:
                return "#61CEC0"
            case .normal:
                return "#9DA0AA"
            case .poison:
                return "#A552CC"
            case .psychic:
                return "#EA5D60"
            case .rock:
                return "#BAAB82"
            case .steel:
                return "#417D9A"
            case .water:
                return "#4A90DA"
        }
    }
    
    func getBackgroundColor(type color: TypeColors) -> String {
        switch color {
            case .bug:
                  return "#8BD674"
            case .dark:
                  return "#6F6E78"
            case .dragon:
                  return "#7383B9"
            case .electric:
                  return "#F2CB55"
            case .fairy:
                  return "#EBA8C3"
            case .fighting:
                  return "#EB4971"
            case .fire:
                  return "#FFA756"
            case .flying:
                  return "#83A2E3"
            case .ghost:
                  return "#8571BE"
            case .grass:
                  return "#8BBE8A"
            case .ground:
                  return "#F78551"
            case .ice:
                  return "#91D8DF"
            case .normal:
                  return "#B5B9C4"
            case .poison:
                  return "#9F6E97"
            case .psychic:
                  return "#FF6568"
            case .rock:
                  return "#D4C294"
            case .steel:
                  return "#4C91B2"
            case .water:
                  return "#58ABf6"
        }
    }
}
