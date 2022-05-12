//
//  ButtonView.swift
//  TrafficLightSwiftUI
//
//  Created by Paul Matar on 12/05/2022.
//

import SwiftUI

struct ButtonView: View {
    let width: Double
    let height: Double
    
    let action: () -> ()
    var title: String
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .foregroundColor(.white)
                .frame(width: width, height: height)
                .background(.blue)
                .cornerRadius(15)
                .overlay(RoundedRectangle(cornerRadius: 15)
                    .stroke(.white, lineWidth: 4))
        }
    }
}
