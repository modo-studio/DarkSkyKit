import Foundation

public struct Forecast {
    
    let latitude: Double
    let longitude: Double
    let timezone: String
    let offset: Int
    let currently: ForecastDataPoint
    let minutely: [ForecastDataPoint]
    let hourly: [ForecastDataPoint]
    let daily: [ForecastDataPoint]
    let alerts: [ForecastAlert]?
    let flags: ForecastFlags?
    
    init(data: [String:AnyObject]) {
        if let lat = data["latitude"] as? Double {
            self.latitude = lat
        }
        if let long = data["longitude"] as? Double {
            self.longitude = long
        }
        if let timezone = data["timezone"] as? String {
            self.timezone = timezone
        }
        if let offset = data["offset"] as? Int {
            self.offset = offset
        }
    }
}
