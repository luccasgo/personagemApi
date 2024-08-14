//
//  Recarregar.swift
//  playadventure
//
//  Created by Turma02-12 on 01/08/24.
//

import SwiftUI

struct Recarregar: View {
    @StateObject var viewModel = ViewModel()
    var body: some View {
        ZStack {
            
            Image("energiafundo")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            Image("recarregarEnergia")
                .resizable()
                .scaledToFit()
                .frame(height: 500)
                .position(x: 177, y: 150)
            ForEach(viewModel.characthers, id: \.self){ char in
                Text("\(char.tempo, specifier: "%.2f")").position(x: 190, y: 325)
                Text("\(char.distancia, specifier: "%.2f")").position(x: 300, y: 300)
                Text("\(char.calorias)").position(x: 80, y: 300)

            }
            
           
            
           
            
            
            
            
            VStack {
                HStack(spacing: 20) {
                    Button(action: {
                        // Ação para o botão Play
                        print("Play Pressionado")
                    }) {
                        Image(systemName: "play.circle.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 50)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.blue)
                            .clipShape(Capsule())
                            .overlay(
                                Capsule()
                                    .stroke(Color.blue, lineWidth: 2)
                            )
                            .shadow(radius: 10)
                        
                    }
                    .position(x: 140, y: 440)

                    Button(action: {
                        // Ação para o botão Pause
                        print("Pause Pressionado")
                    }) {
                        Image(systemName: "pause.circle.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 50)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.red)
                            .clipShape(Capsule())
                            .overlay(
                                Capsule()
                                    .stroke(Color.red, lineWidth: 2)
                            )
                            .shadow(radius: 10)
                    }
                    .position(x: 37, y: 440)
                }
            }
            
            Button(action: {
                print("Botão 'trocar caloria por energia' pressionado")
            }) {
                Text("Trocar caloria por energia")
                    .font(.headline)
                    .foregroundColor(.black)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.black, lineWidth: 2)
                    )
                    .shadow(radius: 10)
            }
            .position(x: 187, y: 530)
        }.onAppear(){
            viewModel.getPersonagem()
            viewModel.getValoresArduino()
        }
    }
}

#Preview {
    Recarregar()
}
