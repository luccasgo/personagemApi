//
//  Model.swift
//  personagemApi
//
//  Created by Turma02-17 on 06/08/24.
//

import Foundation

struct Characther : Decodable,Hashable,Encodable {
    var _id: String
    var _rev: String
    var nome: String
    var imagem: String?
    var idade: Int
    var energia: Int
    var distancia: Double
    var batimentos: Int
    var passos: Int
}
