import Foundation

enum DiceRoller {
    /// Pure and deterministic: maps a fraction in [0, 1) to a die face in 1...sides.
    /// Separating this from the randomness is what makes the roller testable.
    static func face(sides: Int, fraction: Double) -> Int {
        let clamped = min(max(fraction, 0), 0.999999)
        return Int(clamped * Double(sides)) + 1
    }

    /// Rolls one die of `sides` faces using the system random source.
    static func roll(sides: Int) -> Int {
        face(sides: sides, fraction: Double.random(in: 0..<1))
    }
}
