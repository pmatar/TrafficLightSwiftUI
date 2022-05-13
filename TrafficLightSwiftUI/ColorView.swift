//
//  ColorView.swift
//  TrafficLightSwiftUI
//
//  Created by Paul Matar on 12/05/2022.
//

import SwiftUI

struct ColorView: View {
    let color: Color
    let isOn: Bool
    
    private let size = UIScreen.main.bounds.width / 3
    
    var body: some View {
        Circle()
            .foregroundColor(color.opacity(isOn ? 1 : 0.3))
            .frame(width: size, height: size)
            .overlay(Circle().stroke(.white, lineWidth: 4))
    }
}
