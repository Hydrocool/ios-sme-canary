import SwiftUI

@main
struct SpikeApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

struct ContentView: View {
    private let options = [4, 6, 8, 20]
    @State private var sides = 6
    @State private var result = 1

    var body: some View {
        VStack(spacing: 24) {
            Text("\(result)")
                .font(.system(size: 96, weight: .bold, design: .rounded))
                .accessibilityIdentifier("result")

            Picker("Sides", selection: $sides) {
                ForEach(options, id: \.self) { Text("d\($0)") }
            }
            .pickerStyle(.segmented)

            Button("Roll") {
                result = DiceRoller.roll(sides: sides)
            }
            .font(.title2)
            .buttonStyle(.borderedProminent)
        }
        .padding()
    }
}
