//
//  Fase1.swift
//  playadventure
//
//  Created by Turma02-12 on 01/08/24.
//

import SwiftUI

struct Fase1: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            Image("fundofases")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: UIScreen.main.bounds.width)
                .clipped()
                .ignoresSafeArea()
            
            Image("botaoplay")
                .resizable()
                .frame(width: 58, height: 67)
                .position(x: 267, y: 617)
            
            Image("botaocadeado")
                .resizable()
                .frame(width: 58, height: 67)
                .position(x: 65, y: 573)
            
            Image("botaocadeado")
                .resizable()
                .frame(width: 58, height: 67)
                .position(x: 290, y: 400)
            
            Image("botaocadeado")
                .resizable()
                .frame(width: 58, height: 67)
                .position(x: 65, y: 275)
            
            Image("botaocadeado")
                .resizable()
                .frame(width: 58, height: 67)
                .position(x: 293, y: 175)
        }
        .navigationBarHidden(true)
       
    }
}

#Preview {
    Fase1()
}





