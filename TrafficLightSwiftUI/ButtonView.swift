//
//  ButtonView.swift
//  TrafficLightSwiftUI
//
//  Created by Paul Matar on 12/05/2022.
//

import SwiftUI

struct ButtonView: View {
    let action: () -> Void
    let title: String
    
    private let size = UIScreen.main.bounds.width / 3
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .foregroundColor(.white)
                .frame(width: size, height: size / 2.5)
                .background(.blue)
                .cornerRadius(15)
                .overlay(RoundedRectangle(cornerRadius: 15)
                    .stroke(.white, lineWidth: 4))
        }
    }
}
