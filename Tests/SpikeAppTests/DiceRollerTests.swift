import XCTest
@testable import SpikeApp

final class DiceRollerTests: XCTestCase {
    func testFaceFloorMapsToOne() {
        XCTAssertEqual(DiceRoller.face(sides: 6, fraction: 0.0), 1)
    }

    func testFaceNearTopMapsToMax() {
        XCTAssertEqual(DiceRoller.face(sides: 6, fraction: 0.999999), 6)
    }

    func testFaceMidOnD20() {
        XCTAssertEqual(DiceRoller.face(sides: 20, fraction: 0.5), 11)
    }

    func testRollAlwaysInRange() {
        for sides in [4, 6, 8, 20] {
            for _ in 0..<1000 {
                let value = DiceRoller.roll(sides: sides)
                XCTAssertTrue(value >= 1 && value <= sides, "roll \(value) out of 1...\(sides)")
            }
        }
    }
}
