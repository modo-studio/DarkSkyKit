import Foundation
import Alamofire

enum Router: URLRequestConvertible {
    private static let baseURLString = "https://api.forecast.io"

    case Current(Configuration, Double, Double)
    case TimeMachine(Configuration, Double, Double, NSDate)

    var method: Alamofire.Method {
        return .GET
    }

    var path: String {
        switch self {
        case .Current(let c, let lat, let long):
            return "/forecast/\(c.token)/\(lat),\(long)"
        case .TimeMachine(let c, let lat, let long, let date):
            return "/forecast/\(c.token)/\(lat),\(long),\(date.timeIntervalSince1970)"
        }
    }

    var params: [String: AnyObject] {
        var configuration: Configuration
        switch self {
        case .Current(let c, _, _):
            configuration = c
        case .TimeMachine(let c, _, _, _):
            configuration = c
        }

        var parameters = [String: AnyObject]()
        if let units = configuration.units {
            parameters.updateValue(units.rawValue, forKey: "units")
        }
        if let exclude = configuration.exclude {
            parameters.updateValue(exclude.rawValue, forKey: "exclude")
        }
        if let extend = configuration.extend {
            parameters.updateValue(extend.rawValue, forKey: "extend")
        }
        if let lang = configuration.lang {
            parameters.updateValue(lang, forKey: "lang")
        }
        return parameters
    }

    var URLRequest: NSMutableURLRequest {
        let URL = NSURL(string: Router.baseURLString)!
        let mutableURLRequest = NSMutableURLRequest(URL: URL.URLByAppendingPathComponent(path))
        mutableURLRequest.HTTPMethod = method.rawValue
        return Alamofire.ParameterEncoding.URL.encode(mutableURLRequest, parameters: self.params).0
    }
}
