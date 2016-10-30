import Foundation

public struct Configuration {
    public let token: String
    public let units: Unit?
    public let exclude: Exclude?
    public let extend: Extend?
    public let lang: String?

    public init (token: String,
                 units: Unit? = nil,
                 exclude: Exclude? = nil,
                 extend: Extend? = nil,
                 lang: String? = nil) {

        self.token = token
        self.units = units
        self.exclude = exclude
        self.extend = extend
        self.lang = lang
    }
}

public enum Unit: String {
    case us, si, ca, uk2, auto
}

public enum Exclude: String {
    case currently, minutely, hourly, daily, alerts, flags
}

public enum Extend: String {
    case hourly
}
