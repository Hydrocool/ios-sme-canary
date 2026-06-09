import XCTest
@testable import SpikeApp

final class TipCalculatorTests: XCTestCase {
    func testTipIsPercentOfBill() {
        XCTAssertEqual(TipCalculator.tip(bill: 100, percent: 15), 15, accuracy: 0.001)
    }

    func testTotalAddsTipToBill() {
        XCTAssertEqual(TipCalculator.total(bill: 100, percent: 15), 115, accuracy: 0.001)
    }

    // NEGATIVE FIXTURE (Task 13): unsatisfiable. tip(100, 10) is mathematically 10, never 11.
    // No code change can satisfy this without breaking testTipIsPercentOfBill (100 @ 15% = 15).
    // Purpose: prove the no-progress guard halts the loop and escalates instead of burning the
    // CI budget on an unwinnable fix.
    func testContradiction() {
        XCTAssertEqual(TipCalculator.tip(bill: 100, percent: 10), 11, accuracy: 0.001)
    }
}
