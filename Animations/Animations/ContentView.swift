//
//  ContentView.swift
//  Animations
//
//  Created by Luis Eduardo Gonzalez on 2020-07-14.
//  Copyright © 2020 Luis Eduardo Gonzalez. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var animationAmount = 0.0

    var body: some View {
        VStack {
//            Stepper("Scale amount", value: $animationAmount.animation(
//                Animation.easeInOut(duration: 1)
//                    .repeatCount(3, autoreverses: true)
//            ), in: 1...10)

//            Spacer()
            Button("Tap Me") {
                withAnimation(.interpolatingSpring(stiffness: 5, damping: 1)) {
                    self.animationAmount += 360
                }
            }
            .padding(50)
            .background(Color.red)
            .foregroundColor(.white)
            .clipShape(Circle())
            .rotation3DEffect(.degrees(animationAmount), axis: (x: 0, y: 1, z: 0))
//            .scaleEffect(animationAmount)
//            .overlay(
//                Circle()
//                    .stroke(Color.red)
//                    .scaleEffect(animationAmount)
//                    .opacity(Double(2 - animationAmount))
//                    .animation(
//                        Animation.easeOut(duration: 1)
//                            .repeatForever(autoreverses: false)
//                    )
//            )
//            .onAppear {
//                self.animationAmount = 2
//            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
