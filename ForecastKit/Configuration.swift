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
    
    var params: [String: String] {
        var params: [String: String] = [:]
        if let units = units {
            params["units"] = units.rawValue
        }
        if let exclude = exclude {
            params["exclude"] = exclude.rawValue
        }
        if let extend = extend {
            params["extend"] = extend.rawValue
        }
        if let lang = lang {
            params["lang"] = lang
        }
        return params
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
