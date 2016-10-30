import XCTest
import Foundation

class DarkSkyKitTests: XCTestCase {
    func testInitToken() {
        let f = DarkSkyKit(apiToken: "57721")
        XCTAssertEqual(f.configuration.token, "57721")
    }

    func testInitConfiguration() {
        let c = Configuration(token: "57721")
        let f = DarkSkyKit(configuration: c)
        XCTAssertEqual(f.configuration.token, "57721")
    }
}
