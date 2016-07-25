import Foundation
import Alamofire

public extension ForecastKit {
    
    public func current(latitude lat: Double, lognitude long: Double) {
        Alamofire.request(Router.Current(configuration, lat, long)).responseJSON { response in
            
            
            
            if let data = response.result.value as? [String:AnyObject] {
                print(data)
            }
        }
    }
}
