//
//  SampleView.swift
//  FolderApp
//
//  Created by cmStudent on 2024/08/08.
//

import SwiftUI

struct SampleView: View {
    
    @State private var isGradientSelected: Bool = false
    @State private var isSliderSelected: Bool = false
    @State private var isPickerSelected: Bool = false
    
    var body: some View {
        HStack {
            ForEach(1...3, id: \.self) { index in
                Button(action: {
                    onTap(for: index)
                }) {
                    ZStack {
                        Image("folderimg")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 80)
                            .padding()
                        Text(foldername(for: index))
                            .foregroundColor(.black)
                            .background(Color.white.opacity(0.7))
                            .padding(4)
                    }
                }
            }
        }
        .sheet(isPresented: $isGradientSelected) {
            GradientExView()
                .presentationDetents([.large,.medium])
        }
        .sheet(isPresented: $isSliderSelected) {
            SliderExView()
                .presentationDetents([.large,.medium])
        }
        .sheet(isPresented: $isPickerSelected) {
            PickerExView()
                .presentationDetents([.large,.medium])
        }
    }
    
    private func foldername(for index: Int) -> String {
        switch index {
        case 1:
            return "Gradient"
        case 2:
            return "Slider"
        case 3:
            return "Picker"
        default:
            return ""
        }
    }
    
    private func onTap(for index: Int) {
        switch index {
        case 1:
            isGradientSelected.toggle()
        case 2:
            isSliderSelected.toggle()
        case 3:
            isPickerSelected.toggle()
        default:
            break
        }
    }
}

#Preview {
    SampleView()
}
