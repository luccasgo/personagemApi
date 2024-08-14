//
//  Perfil.swift
//  playadventure
//
//  Created by Turma02-12 on 13/08/24.
//

import SwiftUI

struct Perfil: View {
    @State private var givenNome: String = ""
    @State private var givenIdade: String = ""
    @State private var givenEnergia: String = ""
    @State private var givenDistancia: String = ""
    @State private var givenPassos: String = ""

    var body: some View {
        ZStack {
            Image("2")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            VStack {
                Text("Perfil do Usuario")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.top, 50) // Adjust top padding
                
                Spacer()
                
                VStack(spacing: 20) {
                    Group {
                        TextField("Nome", text: $givenNome)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding()
                        
                        TextField("Idade", text: $givenIdade)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding()
                        
                        TextField("Energia", text: $givenEnergia)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding()
                        
                        TextField("Distancia", text: $givenDistancia)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding()
                        
                        TextField("Passos", text: $givenPassos)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding()
                    }
                    .background(Color.white.opacity(0.8)) // Semi-transparent background for text fields
                    .clipShape(RoundedRectangle(cornerRadius: 10)) // Rounded corners for text fields
                    
                    Button(action: {
                        let idade = Double(givenIdade) ?? 0.0
                        let energia = Double(givenEnergia) ?? 0.0
                        let distancia = Double(givenDistancia) ?? 0.0
                        let passos = Double(givenPassos) ?? 0.0
                        
                        // Handle user data here
                    }) {
                        Text("Cadastrar Usuario")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.blue)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                    }
                }
                .padding()
                
                Spacer()
            }
        }
    }
}

#Preview {
    Perfil()
}
