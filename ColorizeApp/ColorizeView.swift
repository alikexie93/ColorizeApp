//
//  ColorizeView.swift
//  ColorizeApp
//
//  Created by Алексей Филиппов on 13.06.2023.
//

import SwiftUI

struct ColorizeView: View {
    
    let color: Color
    
    var body: some View {
        Rectangle()
            .fill(color)
            .frame(height: 350)
            .cornerRadius(24)
    }
}

struct ColorizeView_Previews: PreviewProvider {
    static var previews: some View {
        ColorizeView(color: .red)
    }
}
