//
//  CustomAlertView.swift
//  playadventure
//
//  Created by Turma02-12 on 31/07/24.
//

import SwiftUI

struct CustomAlertView: View {
    var title: String
    var message: String
    var onDismiss: () -> Void
    
    var body: some View {
        VStack(spacing: 20) {
            Text(title)
                .font(.title)
                .foregroundColor(.red)
                .bold()
                .padding(.top, 20)
                .multilineTextAlignment(.center)
                .frame(maxWidth: .infinity) 
            
            Text(message)
                .padding()
                .multilineTextAlignment(.center)
                .frame(maxWidth: .infinity)
            
            Button(action: {
                onDismiss()
            }) {
                Text("Fechar")
                    .foregroundColor(.red)
                    .padding()
                    .background(Capsule().stroke(Color.red, lineWidth: 1))
            }
            .padding(.bottom, 20)
        }
        .frame(width: 300)
        .background(Color.white)
        .cornerRadius(12)
        .shadow(radius: 20)
        .padding()
    }
}

#Preview {
    CustomAlertView(title: "Pouca energia", message: "Recarregue sua energia no diamante", onDismiss: {})
}


