//
//  ViewController.swift
//  meusFilmes
//
//  Created by Fellipe Ricciardi Chiarello on 4/22/19.
//  Copyright © 2019 fchiarello. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var Filmes: [Filme] = []
    

    override func viewDidLoad(){
        super.viewDidLoad()
    
    var filme: Filme
    
    filme = Filme(titulo: "Filme 1", descricao: "Descrição 1")
    Filmes.append(filme)
    
        filme = Filme(titulo: "Filme 2", descricao: "Descrição 2")
        Filmes.append(filme)
        
    
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Filmes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let filmes = Filmes [indexPath.row]
        let celulaReuso = "celulaReuso"
        
        let celula = tableView.dequeueReusableCell(withIdentifier: celulaReuso, for: indexPath)
        
        celula.textLabel?.text = filmes.titulo
        
        return celula
    }

}

