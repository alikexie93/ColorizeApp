//
//  TextFieldView.swift
//  ColorizeApp
//
//  Created by Алексей Филиппов on 14.06.2023.
//

import SwiftUI

struct TextFieldView: View {
    @Binding var value: Double
    
    var body: some View {
        TextField("Value", value: $value, formatter: NumberFormatter())
            .modified()
            .frame(width: 60)
    }
}


struct TextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldView(value: .constant(0.5))
    }
}

struct TFViewModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding(EdgeInsets(top: 12, leading: 8, bottom: 12, trailing: 8))
            .overlay(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(lineWidth: 2)
                    .foregroundColor(.white)
            )
            .font(.title2)
            .foregroundColor(.white)
    }
}

extension TextField {
    func modified() -> some View {
        modifier(TFViewModifier())
    }
}
