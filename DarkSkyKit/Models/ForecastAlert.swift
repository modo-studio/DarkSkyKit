import Foundation

public struct ForecastAlert {
    public var title: String?
    public var expires: Date?
    public var description: String?
    public var uri: String?

    static func map(_ data: [String: AnyObject]) -> ForecastAlert {
        var a = ForecastAlert()
        a.title = data["title"] as? String ?? nil
        a.expires = Date(time: data["expires"] as? Double)
        a.description = data["description"] as? String ?? nil
        a.uri = data["uri"] as? String ?? nil
        return a
    }
}
