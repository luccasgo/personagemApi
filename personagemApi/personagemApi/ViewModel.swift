//
//  ViewModel.swift
//  personagemApi
//
//  Created by Turma02-17 on 06/08/24.
//

import Foundation
import SwiftUI

class ViewModel: ObservableObject {
    
    
    @Published var characthers : [Characther] = []
    func getPersonagem(){
        guard let url = URL(string: "http://127.0.0.1:1880/get") else{
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { [weak self] data, _,error in
            
            guard let data = data, error == nil else {
                return
            }
            do {
                let jsonDecodificado = try JSONDecoder().decode([Characther].self, from: data)
                
                DispatchQueue.main.async {
                    self?.characthers = jsonDecodificado
                }
            }catch{
                print(error)
            }
            
        }
        
        task.resume()
    }
    
    
    func atualizarValores(chars : [Characther], distancia: Double, batimentos: Int, passos : Int){
        
        for i in chars.indices {
            var personagem = chars[i]
            personagem.distancia += distancia
            personagem.batimentos += batimentos
            personagem.passos += passos
            personagem._rev = chars[i]._rev
            postValoresAtualizados(char: personagem)
        }
    }

    
    func postValoresAtualizados(char : Characther){
        guard let url = URL(string:"http://127.0.0.1:1880/update") else {
            return
        }
        var request = URLRequest(url: url)
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.httpMethod = "PUT"
        do {
            let encoder = JSONEncoder()
            request.httpBody = try encoder.encode(char)
        } catch {
            return
        }
        
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
        }
        
        task.resume()
    }
    
}
