//
//  ContentView.swift
//  ColorizeApp
//
//  Created by Алексей Филиппов on 13.06.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var redValue = Double.random(in: 0...255).rounded()
    @State private var greenValue = Double.random(in: 0...255).rounded()
    @State private var blueValue = Double.random(in: 0...255).rounded()
    
    @FocusState private var isInputActive: Bool
    
    var body: some View {
        ZStack {
            VStack(spacing: 24) {
                ColorizeView(red: redValue, green: greenValue, blue: blueValue)
                Spacer()
                VStack {
                    SliderView(value: $redValue, color: .red)
                    SliderView(value: $greenValue, color: .green)
                    SliderView(value: $blueValue, color: .blue)
                }
            }
            Spacer()
            .frame(height: 150)
            .focused($isInputActive)
            .toolbar {
                ToolbarItemGroup(placement: .keyboard) {
                    Button("Done") {
                        isInputActive = false
                    }
                }
            }
        }
        .padding()
        .background(.black)
        .onTapGesture {
            isInputActive = false
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
