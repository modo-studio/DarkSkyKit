import Foundation

public struct Configuration {
    let token: String
    let units: Unit?
    let exclude: Exclude?
    let extend: Extend?
    let lang: String?
    
    init (token: String,
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

enum Unit: String {
    case us, si, ca, uk2, auto
}

enum Exclude: String {
    case currently, minutely, hourly, daily, alerts, flags
}

enum Extend: String {
    case hourly
}
