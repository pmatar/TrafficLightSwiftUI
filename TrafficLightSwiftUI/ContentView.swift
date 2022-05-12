//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Paul Matar on 12/05/2022.
//

import SwiftUI

struct ContentView: View {
    enum CurrentLight {
        case red, yellow, green
    }
    
    private let circleWidth = UIScreen.main.bounds.width / 2.5
    private let circleHeight = UIScreen.main.bounds.height / 6
    
    @State private var currentLight = CurrentLight.red
    @State private var redLightOn = false
    @State private var yellowLightOn = false
    @State private var greenLightOn = false
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack(spacing: 16) {
                ColorView(width: circleWidth, height: circleHeight,
                          color: .red, opacity: redLightOn ? 1 : 0.3)
                ColorView(width: circleWidth, height: circleHeight,
                          color: .yellow, opacity: yellowLightOn ? 1 : 0.3)
                ColorView(width: circleWidth, height: circleHeight,
                          color: .green, opacity: greenLightOn ? 1 : 0.3)
                Spacer()
                ButtonView(width: circleWidth, height: circleHeight / 2.5,
                           action: buttonTapped,
                           title: (!redLightOn && !yellowLightOn && !greenLightOn) ? "START" : "NEXT" )
            }.padding()
        }
    }
    
    private func buttonTapped() {
        switch currentLight {
        case .red:
            greenLightOn = false
            redLightOn = true
            currentLight = .yellow
        case .yellow:
            redLightOn = false
            yellowLightOn = true
            currentLight = .green
        case .green:
            greenLightOn = true
            yellowLightOn = false
            currentLight = .red
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
