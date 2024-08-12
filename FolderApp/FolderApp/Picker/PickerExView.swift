//
//  PickerExView.swift
//  FolderApp
//
//  Created by cmStudent on 2024/08/13.
//

import SwiftUI

struct PickerExView: View {
    @State var selectedOption: Int = 0
    var body: some View {
        Text("国籍を選択してください：")
        Picker("Pick",selection: $selectedOption) {
            Text("日本").tag(0)
            Text("韓国").tag(1)
            Text("中国").tag(2)
        }
        .padding()
        Picker("Pick",selection: $selectedOption) {
            Text("日本").tag(0)
            Text("韓国").tag(1)
            Text("中国").tag(2)
        }
        .pickerStyle(SegmentedPickerStyle())
    }
}

#Preview {
    PickerExView()
}
