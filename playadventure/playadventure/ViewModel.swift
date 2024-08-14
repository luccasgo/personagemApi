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
    @Published var infos : [ArduinInfos] = []
    func getPersonagem(){
        guard let url = URL(string: "http://192.168.128.114:1880/getPersonagem") else{
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
    
    
    func atualizarValores(chars : [Characther],infos : [ArduinInfos]){
        
        for i in chars.indices {
            var personagem = chars[i]
            personagem.distancia += infos[i].distance
            personagem.calorias += infos[i].calories
            personagem.passos += infos[i].steps
            personagem.tempo += infos[i].time
            personagem._rev = chars[i]._rev

            postValoresAtualizados(char: personagem)
        }
    }


    
    func postValoresAtualizados(char : Characther){
        guard let url = URL(string:"http://192.168.128.114:1880/updatePersonagem") else {
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
    
    func getValoresArduino(){
        guard let url = URL(string: "http://192.168.128.114:1880/get") else{
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { [weak self] data, _,error in
            
            guard let data = data, error == nil else {
                return
            }
            do {
                let jsonDecodificado = try JSONDecoder().decode([ArduinInfos].self, from: data)
                
                DispatchQueue.main.async {
                    self?.infos = jsonDecodificado
                }
            }catch{
                print(error)
            }
            
        }
        
        task.resume()
    }
    
}
