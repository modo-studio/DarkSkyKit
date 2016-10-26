import Foundation
import Alamofire

enum Router: URLRequestConvertible {

    fileprivate static let baseURLString = "https://api.darksky.net"

    case current(Configuration, Double, Double)
    case timeMachine(Configuration, Double, Double, Date)

    var method: HTTPMethod {
        return .get
    }

    var path: String {
        switch self {
        case .current(let c, let lat, let long):
            return "/forecast/\(c.token)/\(lat),\(long)"
        case .timeMachine(let c, let lat, let long, let date):
            return "/forecast/\(c.token)/\(lat),\(long),\(date.timeIntervalSince1970)"
        }
    }

    var params: [String: AnyObject] {
        var configuration: Configuration
        switch self {
        case .current(let c, _, _):
            configuration = c
        case .timeMachine(let c, _, _, _):
            configuration = c
        }

        var parameters = [String: AnyObject]()
        if let units = configuration.units {
            parameters.updateValue(units.rawValue as AnyObject, forKey: "units")
        }
        if let exclude = configuration.exclude {
            parameters.updateValue(exclude.rawValue as AnyObject, forKey: "exclude")
        }
        if let extend = configuration.extend {
            parameters.updateValue(extend.rawValue as AnyObject, forKey: "extend")
        }
        if let lang = configuration.lang {
            parameters.updateValue(lang as AnyObject, forKey: "lang")
        }
        return parameters
    }

    func asURLRequest() throws -> URLRequest {
        let url = try Router.baseURLString.asURL()
        var urlRequest = URLRequest(url: url.appendingPathComponent(path))
        urlRequest.httpMethod = method.rawValue
        urlRequest = try URLEncoding.default.encode(urlRequest, with: self.params)
        return urlRequest
    }
}
