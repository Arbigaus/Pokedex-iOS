//
//  ViewController.swift
//  Pokedex-iOS
//
//  Created by Gerson Arbigaus on 03/08/20.
//  Copyright © 2020 Gerson Arbigaus. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var pokeList: [PokeInfo] = []

    @IBOutlet weak var pokeTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        pokeTableView.delegate = self
//        pokeTableView.dataSource = self
        
        let Service = PokeService()
        pokeList = Service.getPokeList()
        Service.dispatchGroup.notify(queue: .main) {
            print(self.pokeList)
            
        }
        
    }

    
}

extension ViewController: UITableViewDelegate {
    
}

//extension ViewController: UITableViewDataSource {
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 3
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
//
//        return cell
//    }
//
//
//}
