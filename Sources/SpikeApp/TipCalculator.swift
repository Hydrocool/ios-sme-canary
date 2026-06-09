import Foundation

enum TipCalculator {
    static func tip(bill: Double, percent: Double) -> Double {
        bill * percent / 100
    }

    static func total(bill: Double, percent: Double) -> Double {
        bill + tip(bill: bill, percent: percent)
    }
}
