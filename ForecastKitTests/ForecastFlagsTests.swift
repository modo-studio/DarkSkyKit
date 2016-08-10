import XCTest
import Foundation

class ForecastFlagsTests: XCTestCase {
    func testForecastFlagsMap() {

        if let path = NSBundle.mainBundle().pathForResource("flags", ofType: "json") {
            let data = try! NSData(contentsOfURL: NSURL(fileURLWithPath: path), options: .DataReadingMappedIfSafe)
            if let jsonResult: NSDictionary = try! NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.MutableContainers) as? NSDictionary {
                print(jsonResult)
            }
        }
    }
}
