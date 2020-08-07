//
//  PokeService.swift
//  Pokedex-iOS
//
//  Created by Gerson Arbigaus on 03/08/20.
//  Copyright © 2020 Gerson Arbigaus. All rights reserved.
//

import Foundation

struct PokeData: Decodable {
    let results: [Pokemon]
}

struct Pokemon: Decodable {
    var name: String
    var url: String
}

struct PokeInfo: Decodable {
    var name: String
    var id: Int
//    var species: Species
}

struct Species: Decodable {
    var name: String
}

class PokeService {
    private var baseUrl : String = "https://pokeapi.co/api/v2"
    let dispatchGroup = DispatchGroup()
    
    func getList(completion: @escaping (PokeData) -> ()) {
        let url = URL(string: "\(baseUrl)/pokemon?limit=1")!
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in

            if let data = data {
                if let decoded = try? JSONDecoder().decode(PokeData.self, from: data) {
                    for poke in decoded.results {
                        self.getPoke(with: poke.url) { pokeData in
                            print(pokeData)
                        }
                    }
                    
                    self.dispatchGroup.notify(queue: .main) {
                        print("All Finnished")
                    }
                    
                }
            }
            
        }
        .resume()
    }
    
    func getPoke(with url: String, completion: @escaping (PokeInfo) -> ()) {
        dispatchGroup.enter()
        
        print(url)
        URLSession.shared.dataTask(with: URL(string: url)!) {(data, response, error) in
            if let data = data {
                print(data)
                if let decoded = try? JSONDecoder().decode(PokeInfo.self, from: data) {
                    self.dispatchGroup.leave()
                    completion(decoded)
                }
            }
        }
    }
}
