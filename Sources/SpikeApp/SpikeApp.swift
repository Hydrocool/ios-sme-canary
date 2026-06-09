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
    private let bill = 100.0
    private let percent = 15.0

    var body: some View {
        VStack(spacing: 8) {
            Text("Bill: \(bill, specifier: "%.2f")")
            Text("Tip (\(percent, specifier: "%.0f")%): \(TipCalculator.tip(bill: bill, percent: percent), specifier: "%.2f")")
            Text("Total: \(TipCalculator.total(bill: bill, percent: percent), specifier: "%.2f")")
        }
        .padding()
    }
}
