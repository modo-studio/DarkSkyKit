import Foundation
import Alamofire

public extension DarkSkyKit {
    public func timeMachine(latitude lat: Double, lognitude long: Double, date: NSDate, result: Result<Forecast, NSError> -> Void) {
        Alamofire.request(Router.TimeMachine(configuration, lat, long, date)).responseJSON { response in
            switch response.result {
            case .Success(let value):
                if let json = value as? [String:AnyObject] {
                    result(Result.Success(Forecast(data: json)))
                }
            case .Failure(let error):
                result(Result.Failure(error))
            }
        }
    }
}
