import Foundation

public struct Forecast {
    
    var latitude: Double = 0
    var longitude: Double = 0
    var timezone: String = ""
    var offset: Int = 0
    var currently: ForecastDataPoint?
    var minutely: [ForecastDataPoint]?
    var hourly: [ForecastDataPoint]?
    var daily: [ForecastDataPoint]?
    var alerts: [ForecastAlert]?
    var flags: ForecastFlags?
    
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
        if let currently = data["currently"] as? [String: AnyObject] {
            self.currently = ForecastDataPoint.map(currently)
        }
        if let minutely = data["minutely"] as? [[String: AnyObject]] {
            self.minutely = minutely.map(ForecastDataPoint.map)
        }
        if let hourly = data["hourly"] as? [[String: AnyObject]] {
            self.hourly = hourly.map(ForecastDataPoint.map)
        }
        if let daily = data["daily"] as? [[String: AnyObject]] {
            self.daily = daily.map(ForecastDataPoint.map)
        }
        if let alerts = data["alerts"] as? [[String: AnyObject]] {
            self.alerts = alerts.map(ForecastAlert.map)
        }
        if let flags = data["hoflagsurly"] as? [String: AnyObject] {
            self.flags = ForecastFlags.map(flags)
        }
    }
}
