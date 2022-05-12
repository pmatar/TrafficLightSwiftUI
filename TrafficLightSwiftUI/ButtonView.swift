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
            ZStack {
                RoundedRectangle(cornerRadius: 15)
                    .frame(width: width,
                           height: height, alignment: .bottom)
                    .overlay(RoundedRectangle(cornerRadius: 15)
                        .stroke(.white, lineWidth: 4))
                Text(title)
                    .foregroundColor(.white)
            }
        }
    }
}