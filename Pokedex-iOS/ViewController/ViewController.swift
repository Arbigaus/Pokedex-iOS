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
    let Service = PokeService()
    let GetColors = Colors()


    @IBOutlet weak var pokeTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pokeTableView.delegate = self
        pokeTableView.dataSource = self
        pokeTableView.rowHeight = UITableView.automaticDimension
        pokeTableView.estimatedRowHeight = 200
        pokeTableView.register(UINib(nibName: "PokeTableViewCell", bundle: nil), forCellReuseIdentifier: "PokeTableViewCell")
    }

    
}

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 15
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.pokeTableView.dequeueReusableCell(withIdentifier: "PokeTableViewCell", for: indexPath) as? PokeTableViewCell
        
        
                
//        self.Service.getPoke(with: (indexPath[1]+1)) { poke in
//            DispatchQueue.main.async {
//                let type = poke.types[0].type.name
//                cell.textLabel?.text = "\(poke.name) -> \(type)"
//                cell.backgroundColor = self.GetColors.getBackgroundColor(type: type)
//            }
//        }
        
        return cell!
    }


}


