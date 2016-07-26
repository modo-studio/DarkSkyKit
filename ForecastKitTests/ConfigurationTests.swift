import XCTest
import Foundation

class ConfigurationTests: XCTestCase {
    func testTokenConfiguration() {
        let c = Configuration(token: "57721")
        XCTAssertEqual(c.token, "57721")
    }
    
    func testUnitsConfiguration() {
        let c = Configuration(token: "57721", units: .us)
        XCTAssertEqual(c.units, .us)
    }
    
    func testExcludeConfiguration() {
        let c = Configuration(token: "57721", exclude: .daily)
        XCTAssertEqual(c.exclude, .daily)
    }
    
    func testExtendConfiguration() {
        let c = Configuration(token: "57721", extend: .hourly)
        XCTAssertEqual(c.extend, .hourly)
    }
    
    func testLangConfiguration() {
        let c = Configuration(token: "57721", lang: "en")
        XCTAssertEqual(c.lang, "en")
    }
    
    func testAllConfiguration() {
        let c = Configuration(token: "57721",
                              units: .us,
                              exclude: .daily,
                              extend: .hourly,
                              lang: "en")
        XCTAssertEqual(c.token, "57721")
        XCTAssertEqual(c.units, .us)
        XCTAssertEqual(c.exclude, .daily)
        XCTAssertEqual(c.extend, .hourly)
        XCTAssertEqual(c.lang, "en")
    }
}
