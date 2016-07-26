import Foundation

public struct ForecastAlert {
    let title: String?
    let expires: NSDate?
    let description: String?
    let uri: String?

    static func map(data: [String: AnyObject]) -> ForecastAlert {
        
    }
}
