//
//  Filmes.swift
//  meusFilmes
//
//  Created by Fellipe Ricciardi Chiarello on 4/22/19.
//  Copyright © 2019 fchiarello. All rights reserved.
//

import UIKit

class Filme{
    var titulo: String!
    var descricao: String!
    var imagem: UIImage
    
    init(titulo: String, descricao: String, imagem: UIImage) {
        
        self.titulo = titulo
        self.descricao = descricao
        self.imagem = imagem
    }
    
}
