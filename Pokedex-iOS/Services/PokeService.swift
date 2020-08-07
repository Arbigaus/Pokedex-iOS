//
//  PokeService.swift
//  Pokedex-iOS
//
//  Created by Gerson Arbigaus on 03/08/20.
//  Copyright © 2020 Gerson Arbigaus. All rights reserved.
//

import Foundation

struct PokeData: Decodable {
    let results: [PokeInfo]
}

struct Pokemon: Decodable {
    var name: String
    var url: String
}

struct PokeInfo: Decodable {
    var name: String
    var id: Int
    var species: Species
}

struct Species: Decodable {
    var name: String
}

class PokeService {
    private var baseUrl : String = "https://pokeapi.co/api/v2"
    let dispatchGroup = DispatchGroup()
    
    func getPoke(with id: Int, completion: @escaping (PokeInfo) -> ()) {
        dispatchGroup.enter()
        if let url = URL(string: "\(baseUrl)/pokemon/\(id)/") {
            URLSession.shared.dataTask(with: url) { (data, response, error) in
                if let data = data {
                    if let decoded = try? JSONDecoder().decode(PokeInfo.self, from: data) {
                        self.dispatchGroup.leave()                       
                        completion(decoded)
                    }
                }
            }.resume()
        }
    }
    
    func getPokeList() -> [PokeInfo] {
        var list: [PokeInfo] = []
        for n in 1...150 {
            self.getPoke(with: n) { poke in
                list.append(poke)
            }
        }
        self.dispatchGroup.notify(queue: .main) {
            print(list)            
        }
        return list
    }
    
}
