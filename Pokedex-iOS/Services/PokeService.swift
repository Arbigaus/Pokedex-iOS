//
//  PokeService.swift
//  Pokedex-iOS
//
//  Created by Gerson Arbigaus on 03/08/20.
//  Copyright © 2020 Gerson Arbigaus. All rights reserved.
//

import Foundation

struct PokeData: Decodable {
    var name: String
    var type: String
}

class PokeService<PokeData> {
    private var baseUrl : String = "https://pokeapi.co/api/v2"
    
    func getList(completion: @escaping (PokeData) -> ()) {
        let url = URL(string: "\(baseUrl)/pokemon?limit=150")!
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if error != nil {
                print("Error to fetch Pokelist \(String(describing: error))")
                return
            }
            
            guard let httpResponse = response as? HTTPURLResponse,
                  (200...299).contains(httpResponse.statusCode) else {
                    print("Error with the response, unexpected status code: \(String(describing: response))")
              return
            }

            if let data = data {
                print("Hey Data")
                let decoder = JSONDecoder()
                
                if let decoded = try? decoder.decode(PokeData.self, from: data) {
                    print("\(decoded)")
                }
                
//              let pokeSummary = try? JSONDecoder().decode(PokeList.self, from: data) {
//                print(pokeSummary.self)
            }
        
            
        }
        .resume()
        
    }
    
}
