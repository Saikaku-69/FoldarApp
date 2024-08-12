//
//  GradientExView.swift
//  FolderApp
//
//  Created by cmStudent on 2024/08/08.
//

import SwiftUI

struct GradientExView: View {
    var body: some View {
        Rectangle()
            .fill (
                LinearGradient(gradient: Gradient(
                    colors: [Color.red, Color.blue, Color.yellow, Color.green, Color.orange]),
                               startPoint: .leading,
                               endPoint: .trailing)
            )
            .frame(width: 300,height: 50)
            .cornerRadius(15)
            .padding(.vertical)
        
        HStack {
            Rectangle()
                .fill (
                    LinearGradient(gradient: Gradient(
                        colors: [Color.red, Color.blue, Color.yellow, Color.green, Color.orange]),
                                   startPoint: .topLeading,
                                   endPoint: .bottomTrailing)
                )
                .frame(width: 150,height: 150)
            
            Circle()
                .fill (
                    RadialGradient(gradient: Gradient(colors: [Color.blue, Color.red, Color.green, Color.yellow, Color.pink]),
                                   center: .center,
                                   startRadius: 0,
                                   endRadius: 75)
                )
                .frame(width: 150)
        }
    }
}

#Preview {
    GradientExView()
}
