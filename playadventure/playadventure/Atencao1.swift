//
//  Atencao1.swift
//  playadventure
//
//  Created by Turma02-12 on 31/07/24.
//

import SwiftUI

struct Atencao1: View {
    var body: some View {
        ZStack {
            Rectangle()
            
            Image("fundo")
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .ignoresSafeArea(.all)
            Image("castelo")
                .resizable()
                .frame(width: 59, height: 105)
                .position(
                    x: 275,
                    y: 515)
            Image("foguete")
                .resizable()
                .frame(width: 59, height: 100)
                .position(
                    x: 150,
                    y: 460)
            Image("gato")
                .resizable()
                .frame(width: 59, height: 105)
                .position(
                    x: 120,
                    y: 330)
            Image("trofeu")
                .resizable()
                .frame(width: 59, height: 110)
                .position(
                    x: 300,
                    y: 220)
            Image("botao")
                .resizable()
                .frame(width: 120, height: 170, alignment: .bottom)
                .position(
                    x: 190,
                    y: 580)
        }
    }
}

#Preview {
    Atencao1()
}
