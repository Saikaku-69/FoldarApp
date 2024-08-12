//
//  SladerExView.swift
//  FolderApp
//
//  Created by cmStudent on 2024/08/12.
//

import SwiftUI

struct SliderExView: View {
    @State var sliderValue: Double = 1.0
    
    var body: some View {
        Slider(value: $sliderValue,in: 0...2)
            .padding(.horizontal)
        Text(String(format:"%.2f",sliderValue))
            .padding(.vertical)
        HStack {
            Button(action: {
                plus()
            }) {
                Text("増える")
            }.font(.system(size:15))
            Spacer()
            Button(action: {
                minus()
            }) {
                Text("減る")
            }.font(.system(size:15))
        }.frame(width:UIScreen.main.bounds.width/2)
    }
    private func plus() {
        sliderValue += 0.1
    }
    private func minus() {
        sliderValue -= 0.1
        if sliderValue <= 0.0 {
            sliderValue = 0.0
        }
    }
}

#Preview {
    SliderExView()
}
