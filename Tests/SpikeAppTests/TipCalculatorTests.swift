import XCTest
@testable import SpikeApp

final class TipCalculatorTests: XCTestCase {
    func testTipIsPercentOfBill() {
        XCTAssertEqual(TipCalculator.tip(bill: 100, percent: 15), 15, accuracy: 0.001)
    }

    func testTotalAddsTipToBill() {
        XCTAssertEqual(TipCalculator.total(bill: 100, percent: 15), 115, accuracy: 0.001)
    }
}
