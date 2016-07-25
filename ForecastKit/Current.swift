import Foundation
import Alamofire

public extension ForecastKit {
    
    public func current(latitude lat: Double, lognitude long: Double) {
        let url = "\(forecastBaseURL)/\(configuration.token)/\(lat),\(long)"
        Alamofire.request(.GET, url, parameters: configuration.params).responseJSON { response in
            if let data = response.result.value as? [String:AnyObject] {
                
            }
        }
    }
}
