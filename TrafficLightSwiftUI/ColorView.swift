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
        ZStack {
            Color(.black).ignoresSafeArea()
            ZStack {
                Circle()
                    .foregroundColor(color.opacity(isOn ? 1 : 0.3))
                    .frame(width: size, height: size)
                    .shadow(color: isOn ? color : .black, radius: 8, x: 0, y: 8)
                    .overlay(Circle().trim(from: 0.6, to: 1)
                            .rotation(.degrees(-19))
                            .stroke(Color("Metallic"), lineWidth: 7))
                PointedView(size: size * 0.85)
                PointedView(size: size * 0.70)
                PointedView(size: size * 0.55)
                PointedView(size: size * 0.40)
                PointedView(size: size * 0.25)
                PointedView(size: size * 0.10)
            }
        }
    }
}
    
    struct ColorView_Previews: PreviewProvider {
        static var previews: some View {
            ColorView(color: .red, isOn: true)
        }
    }

struct PointedView: View {
    let size: Double
    
    var body: some View {
        Circle()
            .foregroundColor(Color.clear.opacity(0))
            .overlay(Circle()
                .stroke(Color.black.opacity(0.5), style: StrokeStyle(lineWidth: 5, lineCap: .butt, lineJoin: .miter, miterLimit: 5, dash: [5], dashPhase: 45)))
            .frame(width: size, height: size, alignment: .center)
    }
}
