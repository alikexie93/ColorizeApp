//
//  ContentView.swift
//  ColorizeApp
//
//  Created by Алексей Филиппов on 13.06.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var redValue = Double.random(in: 0...255)
    @State private var greenValue = Double.random(in: 0...255)
    @State private var blueValue = Double.random(in: 0...255)
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack(spacing: 24) {
                ColorizeView(color: Color(
                    red: redValue/255,
                    green: greenValue/255,
                    blue: blueValue/255)
                )
                Spacer()
                HStack {
                    SliderView(value: $redValue, color: .red)
                    TextFieldView(value: $redValue)
                }
                HStack {
                    SliderView(value: $greenValue, color: .green)
                    TextFieldView(value: $greenValue)
                }
                HStack {
                    SliderView(value: $blueValue, color: .blue)
                    TextFieldView(value: $blueValue)
                }
            }
            .padding()
            .onTapGesture {
                hideKeyboard()
            }
            .toolbar {
                ToolbarItem(placement: .keyboard) {
                    Button("Done") {
                        hideKeyboard()
                    }
                }
            }
        }
    }
    
    private func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
