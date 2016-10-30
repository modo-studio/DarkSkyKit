import XCTest
import Foundation
import OHHTTPStubs

class ForecastRequestTests: XCTestCase {

    let client = DarkSkyKit(apiToken: "0")

    func testForecastRequest() {
        stubAPIResponse()
        let exp = expectation(description: "API Call")
        client.current(latitude: 0.00, longitude: 0.00) { result in
            switch result {
            case .success(let data):
                self.testForecastBasicInfo(fromData: data)
                self.testForecastCurrently(fromData: data)
                self.testForecastMinutely(fromData: data)
                self.testForecastHourly(fromData: data)
                self.testForecastDaily(fromData: data)
                self.testForecastAlerts(fromData: data)
                self.testForecastFlags(fromData: data)
            default: break
            }
            exp.fulfill()
        }
        waitForExpectations(timeout: 5.0, handler: nil)
    }

    func testForecastBasicInfo(fromData data: Forecast) {
        XCTAssertEqual(data.latitude, 37.8267)
        XCTAssertEqual(data.longitude, -122.4233)
        XCTAssertEqual(data.timezone, "America/Los_Angeles")
        XCTAssertEqual(data.offset, -7)
    }

    func testForecastCurrently(fromData data: Forecast) {
        XCTAssertEqual(data.currently?.summary, "Mostly Cloudy")
        XCTAssertEqual(data.currently?.apparentTemperature, 57.34)
    }

    func testForecastMinutely(fromData data: Forecast) {
        XCTAssertEqual(data.minutely?.first?.time?.timeIntervalSince1970, 1477854360)
    }

    func testForecastHourly(fromData data: Forecast) {
        XCTAssertEqual(data.hourly?.first?.temperature, 57.02)
    }

    func testForecastDaily(fromData data: Forecast) {
        XCTAssertEqual(data.daily?.first?.precipIntensity, 0.0136)
    }

    func testForecastAlerts(fromData data: Forecast) {
        XCTAssertEqual(data.alerts?.first?.title, "Flood Watch for Mason, WA")
    }

    func testForecastFlags(fromData data: Forecast) {
        XCTAssertEqual(data.flags?.sources?.first, "darksky")
    }

    func stubAPIResponse() {
        stub(condition: isHost("api.darksky.net")) { _ in
            let stubPath = OHPathForFile("forecast.json", type(of: self))
            return fixture(filePath: stubPath!, headers: ["Content-Type" as NSObject:"application/json" as AnyObject])
        }
    }
}
