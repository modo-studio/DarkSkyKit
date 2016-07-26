import XCTest
import Foundation

class ForecastKitTests: XCTestCase {
    func testInitToken() {
        let f = ForecastKit("57721")
        XCTAssertEqual(f.configuration.token, "57721")
    }

    func testInitConfiguration() {
        let c = Configuration(token:"57721")
        let f = ForecastKit(c)
        XCTAssertEqual(f.configuration.token, "57721")
    }
}
