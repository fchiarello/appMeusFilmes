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
    
        filme = Filme(titulo: "007 - Spectre", descricao: "Descrição 1", imagem: UIImage(imageLiteralResourceName: "filme1"))
        Filmes.append(filme)
    
        filme = Filme(titulo: "Star Wars - O Despertar da Força", descricao: "Descrição 2", imagem: UIImage(imageLiteralResourceName: "filme2"))
        Filmes.append(filme)
        filme = Filme(titulo: "Impacto Mortal", descricao: "Descrição 3", imagem: UIImage(imageLiteralResourceName: "filme3"))
        Filmes.append(filme)
        
        filme = Filme(titulo: "Deadpool", descricao: "Descrição 4", imagem: UIImage(imageLiteralResourceName: "filme4"))
        Filmes.append(filme)
        
        filme = Filme(titulo: "O Regresso", descricao: "Descrição 5", imagem: UIImage(imageLiteralResourceName: "filme5"))
        Filmes.append(filme)
        
        filme = Filme(titulo: "A herdeira", descricao: "Descrição 6", imagem: UIImage(imageLiteralResourceName: "filme6"))
        Filmes.append(filme)
        
        filme = Filme(titulo: "Caçadores de emoção", descricao: "Descrição 7", imagem: UIImage(imageLiteralResourceName: "filme7"))
        Filmes.append(filme)
        
        filme = Filme(titulo: "Regresso do mal", descricao: "Descrição 8", imagem: UIImage(imageLiteralResourceName: "filme8"))
        Filmes.append(filme)
        
        filme = Filme(titulo: "Tarzan", descricao: "Descrição 9", imagem: UIImage(imageLiteralResourceName: "filme9"))
        Filmes.append(filme)
        
        filme = Filme(titulo: "Hardcore", descricao: "Descrição 10", imagem: UIImage(imageLiteralResourceName: "filme10"))
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
        
        let celula = tableView.dequeueReusableCell(withIdentifier: celulaReuso, for: indexPath) as! FilmeCelula
        
       celula.filmeImageView.image = filmes.imagem
        celula.tituloLabel.text = filmes.titulo
        celula.descricaoLabel.text = filmes.descricao
        
        celula.filmeImageView.layer.cornerRadius = 42
        celula.filmeImageView.clipsToBounds = true
        
        
        
        
        
        /*celula.textLabel?.text = filmes.titulo
        celula.textLabel?.text = filmes.descricao
        celula.imageView?.image = filmes.imagem*/
        
        return celula
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "detalheFilme"{
            
            if let indexPath = tableView.indexPathForSelectedRow{
             
                let filmeSelecionado = self.Filmes [indexPath.row]
                let viewControllerDestino = segue.destination as! DetalhesFilmeViewController
                viewControllerDestino.filme = filmeSelecionado
        }
    }

}

}
