//
//  SliderView.swift
//  ColorizeApp
//
//  Created by Алексей Филиппов on 13.06.2023.
//

import SwiftUI

struct SliderView: View {
    @Binding var value: Double
    
    let color: Color
    
    var body: some View {
        HStack {
            Text("\(lround(value))")
                .frame(width: 50, alignment: .leading)
                .font(.title2)
                .fontWeight(.medium)
                .foregroundColor(.white)
            Slider(value: $value, in: 0...255, step: 1)
                .tint(color)
                .animation(.linear, value: value)
        }
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView(value: .constant(0.5), color: .red)
    }
}
