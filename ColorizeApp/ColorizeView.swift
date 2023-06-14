//
//  ColorizeView.swift
//  ColorizeApp
//
//  Created by Алексей Филиппов on 13.06.2023.
//

import SwiftUI

struct ColorizeView: View {
    
    let red: Double
    let green: Double
    let blue: Double
    
    var body: some View {
        Color(red: red / 255, green: green / 255, blue: blue / 255)
            .cornerRadius(24)
            .frame(height: 200)
    }
}

struct ColorizeView_Previews: PreviewProvider {
    static var previews: some View {
        ColorizeView(red: 100, green: 100, blue: 100)
    }
}
