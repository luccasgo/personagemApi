//
//  ContentView.swift
//  playadventure
//
//  Created by Turma02-12 on 30/07/24.
//
import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ViewModel()
    @State private var showCustomAlert = false
    @State private var navigationPath = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $navigationPath) {
            ZStack {
                Image("fundo")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .ignoresSafeArea()
                
                Button(action: {
                    showCustomAlert = true
                }) {
                    Image("7")
                        .resizable()
                        .frame(width: 110, height: 165)
                        .position(x: 215, y: 419)
                }
                .buttonStyle(PlainButtonStyle())
                
                if showCustomAlert {
                    CustomAlertView(
                        title: "Pouca energia",
                        message: "Recarregue sua energia no diamante",
                        onDismiss: {
                            showCustomAlert = false
                        }
                    )
                    .transition(.scale)
                    .zIndex(1)
                }
                
                Image("5")
                    .resizable()
                    .frame(width: 120, height: 195)
                    .position(x: 272, y: 512)
                    .onTapGesture {
                        navigationPath.append(Destination.fase1)
                    }
                
                Image("6")
                    .resizable()
                    .frame(width: 90, height: 140)
                    .position(x: 140, y: 315)
                
                Image("trofeu")
                    .resizable()
                    .frame(width: 70, height: 120)
                    .position(x: 296, y: 220)
                
                Image("botao")
                    .resizable()
                    .frame(width: 120, height: 170, alignment: .bottom)
                    .position(x: 190, y: 580)
                    .onTapGesture {
                        navigationPath.append(Destination.recarregar)
                    }
                
                Image("raio")
                    .resizable()
                    .frame(width: 80, height: 170)
                    .position(x: 60, y: 60)
                
                Image("estrela")
                    .resizable()
                    .frame(width: 80, height: 160)
                    .position(x: 60, y: 105)
            }
            .navigationDestination(for: Destination.self) { destination in
                switch destination {
                case .fase1:
                    Fase1()
                case .recarregar:
                    Recarregar()
                }
            }
            .navigationBarBackButtonHidden(true)

        }
    }
    
    enum Destination {
        case fase1
        case recarregar
    }
}

#Preview {
    ContentView()
}
