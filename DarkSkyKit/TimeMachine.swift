import Foundation
import Alamofire

public extension DarkSkyKit {
    public func timeMachine(latitude lat: Double, longitude long: Double, date: Date, result: @escaping (Result<Forecast>) -> Void) {
        Alamofire.request(Router.timeMachine(configuration, lat, long, date)).responseJSON { response in
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
