//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Paul Matar on 12/05/2022.
//

import SwiftUI

enum CurrentLight {
    case red, yellow, green, none
}

struct ContentView: View {
    
    @State private var currentLight = CurrentLight.none
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack(spacing: 16) {
                ColorView(color: .red,
                          isOn: currentLight == .red)
                ColorView(color: .yellow,
                          isOn: currentLight == .yellow)
                ColorView(color: .green,
                          isOn: currentLight == .green)
                
                Spacer()
                
                ButtonView(action: buttonTapped,
                           title: currentLight == .none ? "START" : "NEXT")
            }.padding()
        }
    }
    
    private func buttonTapped() {
        if currentLight == .none {
            currentLight = .green
        }
        
        switch currentLight {
        case .red:
            currentLight = .yellow
        case .yellow:
            currentLight = .green
        default:
            currentLight = .red
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
    }
}
