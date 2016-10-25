import Foundation

public struct ForecastAlert {
    var title: String?
    var expires: Date?
    var description: String?
    var uri: String?

    static func map(_ data: [String: AnyObject]) -> ForecastAlert {
        var a = ForecastAlert()
        a.title = data["title"] as? String ?? nil
        a.expires = Date(time: data["expires"] as? Double)
        a.description = data["description"] as? String ?? nil
        a.uri = data["uri"] as? String ?? nil
        return a
    }
}
