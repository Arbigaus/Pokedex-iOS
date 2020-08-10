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
    let GetColors = PokeColors()
    let GetIcons = PokeIcons()
    let imgUrl = "https://assets.pokemon.com/assets/cms2/img/pokedex/full/"

    @IBOutlet weak var pokeTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pokeTableView.delegate = self
        pokeTableView.dataSource = self
        pokeTableView.rowHeight = UITableView.automaticDimension
        pokeTableView.separatorStyle = UITableViewCell.SeparatorStyle.none
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
        return 150
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.pokeTableView.dequeueReusableCell(withIdentifier: "PokeTableViewCell", for: indexPath) as? PokeTableViewCell
        
        // MARK: - GET POKE TO CELL
        self.Service.getPoke(with: (indexPath[1]+1)) { poke in
            DispatchQueue.main.async {
                let type = poke.types[0].type.name
                let backgroundColor = self.GetColors.getBackgroundColor(type: type)
                
                let url = URL(string: "\(self.imgUrl)\(self.getLabelId(with: poke.id)).png")
                let imgData = try? Data(contentsOf: url!)
                cell?.pokeImageView?.image = UIImage(data: imgData!)
                
                cell?.pokeIdLabel?.text = "#\(self.getLabelId(with: poke.id))"
                cell?.pokeNameLabel?.text = poke.name.capitalized
                cell?.backGroundView.layer.backgroundColor = backgroundColor.cgColor
                
                cell?.pokeBadgeView1.layer.backgroundColor = self.GetColors.getTypeColor(type: type).cgColor
                cell?.pokeBadgeLabel1?.text = "\(type)".capitalized
                
                cell?.pokeBadgeImg1.image = self.GetIcons.getWhiteIcon(with: type)
                
                if poke.types.count < 2 {
                    cell?.pokeBadgeView2.layer.backgroundColor = UIColor(white: 1, alpha: 0).cgColor
                    cell?.pokeBadgeStackView2.layer.backgroundColor = UIColor(white: 1, alpha: 0).cgColor
                    cell?.pokeBadgeImg2?.isHidden = true
                    cell?.pokeBadgeLabel2?.text = ""
                } else {
                    let bg2Type = poke.types[1].type.name
                    cell?.pokeBadgeView2.layer.backgroundColor = self.GetColors.getTypeColor(type: bg2Type).cgColor
                    cell?.pokeBadgeImg2?.isHidden = false
                    cell?.pokeBadgeLabel2?.text = "\(bg2Type)".capitalized
                    cell?.pokeBadgeImg2.image = self.GetIcons.getWhiteIcon(with: bg2Type)
                }
                
            }
        }
        
        return cell!
    }
    
    func getLabelId(with id: Int) -> String {
        if id < 10 {
            return "00\(id)"
        }
        
        if id < 100 {
            return "0\(id)"
        }
        
        return "\(id)"
    }


}


