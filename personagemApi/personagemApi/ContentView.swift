//
//  ContentView.swift
//  personagemApi
//
//  Created by Turma02-17 on 06/08/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        NavigationStack{
            ZStack{
                ScrollView{
                    VStack {

                        ForEach(viewModel.characthers, id: \.self){ char in
                            Text(char.nome)
                            Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
                                viewModel.getPersonagem()
                                viewModel.atualizarValores(chars: viewModel.characthers, distancia: 5, batimentos: 5, passos: 5)
                            }
                        }
                    }
                }.onAppear(){
                    viewModel.getPersonagem()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}

