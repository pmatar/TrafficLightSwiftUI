//
//  ColorView.swift
//  TrafficLightSwiftUI
//
//  Created by Paul Matar on 12/05/2022.
//

import SwiftUI

struct ColorView: View {
    let width: Double
    let height: Double
    
    var color: Color
    var opacity: Double
    
    var body: some View {
        Circle()
            .foregroundColor(color.opacity(opacity))
            .frame(width: width, height: height)
            .overlay(Circle().stroke(.white, lineWidth: 4))
    }
}
