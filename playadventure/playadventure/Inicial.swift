//
//  Inicial.swift
//  playadventure
//
//  Created by Turma02-12 on 13/08/24.
//
import SwiftUI

struct Inicial: View {
    @State private var buttonScale: CGFloat = 1.0

    var body: some View {
        NavigationView {
            ZStack {
                Image("inicio")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .ignoresSafeArea()
                
                NavigationLink(destination: ContentView()) {
                    Image("vamosla")
                        .resizable()
                        .frame(width: 200, height: 400)
                        .position(
                                x: 135,
                                                    y: 320)
                        .scaleEffect(buttonScale)
                        .onAppear {
                            withAnimation(Animation.easeInOut(duration: 1).repeatForever(autoreverses: true)) {
                                buttonScale = 1.2
                            }
                        }
                }
                .buttonStyle(PlainButtonStyle())
                .position(
                    x: UIScreen.main.bounds.width - 120, // Adjusted for center alignment
                    y: UIScreen.main.bounds.height - 120
                )
            }
            .navigationBarHidden(true)
          
        }
    }
}

#Preview {
    Inicial()
}
