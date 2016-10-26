import XCTest
import Foundation

class ForecastFlagsTests: XCTestCase {
    func testForecastFlagsMap() {

        if let path = Bundle.main.path(forResource: "flags", ofType: "json") {
            let data = try! Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
            if let jsonResult: NSDictionary = try! JSONSerialization.jsonObject(with: data, options: JSONSerialization.ReadingOptions.mutableContainers) as? NSDictionary {
                print(jsonResult)
            }
        }
    }
}
