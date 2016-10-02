import XCTest
import Foundation

class DarkSkyKitTests: XCTestCase {
    func testInitToken() {
        let f = DarkSkyKit("57721")
        XCTAssertEqual(f.configuration.token, "57721")
    }

    func testInitConfiguration() {
        let c = Configuration(token:"57721")
        let f = DarkSkyKit(c)
        XCTAssertEqual(f.configuration.token, "57721")
    }
}
