//
//  ContentView.swift
//  visionDice
//
//  Created by Alexey Parkhomenko on 23.02.2024.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {

    @Environment(\.openImmersiveSpace) var openImmersiveSpace

    var diceData: DiceData

    var body: some View {
        VStack {
            Text(diceData.rolledNumber == 0 ? "🎲" : "\(diceData.rolledNumber)")
                .foregroundStyle(.yellow)
                .font(.custom("Menlo", size: 100))
                .bold()
        }
        .task {
            await openImmersiveSpace(id: "ImmersiveSpace")
        }
    }
}

#Preview(windowStyle: .automatic) {
    ContentView(diceData: DiceData())
}
