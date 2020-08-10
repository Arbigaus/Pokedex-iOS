//
//  PokeIcons.swift
//  Pokedex-iOS
//
//  Created by Gerson Arbigaus on 10/08/20.
//  Copyright © 2020 Gerson Arbigaus. All rights reserved.
//

import Foundation
import UIKit

class PokeIcons {
    
    func getWhiteIcon(with type: PokeType) -> UIImage {
        switch type {
            case .bug:
            return UIImage(named: "whiteBug")!
            case .dark:
                return UIImage(named: "whiteDark")!
            case .dragon:
                return UIImage(named: "whiteDragon")!
            case .electric:
                return UIImage(named: "whiteElectric")!
            case .fairy:
                return UIImage(named: "whiteFairy")!
            case .fighting:
                return UIImage(named: "whiteFighting")!
            case .fire:
                return UIImage(named: "whiteFire")!
            case .flying:
                return UIImage(named: "whiteFlying")!
            case .ghost:
                return UIImage(named: "whiteGhost")!
            case .grass:
                return UIImage(named: "whiteGrass")!
            case .ground:
                return UIImage(named: "whiteGround")!
            case .ice:
                return UIImage(named: "whiteIce")!
            case .normal:
                return UIImage(named: "whiteNormal")!
            case .poison:
                return UIImage(named: "whitePoison")!
            case .psychic:
                return UIImage(named: "whitePsychic")!
            case .rock:
                return UIImage(named: "whiteRock")!
            case .steel:
                return UIImage(named: "whiteSteel")!
            case .water:
                return UIImage(named: "whiteWater")!
        }
    }
}
