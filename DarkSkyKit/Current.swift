import Foundation
import Alamofire

public extension DarkSkyKit {
    public func current(latitude lat: Double, longitude long: Double, result: @escaping (Result<Forecast>) -> Void) {
        Alamofire.request(Router.current(configuration, lat, long)).responseJSON { response in
            switch response.result {
            case .success(let value):
                if let json = value as? [String:AnyObject] {
                    result(Result.success(Forecast(data: json)))
                }
            case .failure(let error):
                result(Result.failure(error))
            }
        }
    }
}
