import Foundation

public struct Forecast {
    var latitude: Double
    var longitude: Double
    var timezone: String
    var offset: Int
    var currently: ForecastDataPoint?
    var minutely: [ForecastDataPoint]?
    var hourly: [ForecastDataPoint]?
    var daily: [ForecastDataPoint]?
    var alerts: [ForecastAlert]?
    var flags: ForecastFlags?
    
    init(data: [String:AnyObject]) {
        self.latitude = data["latitude"] as? Double ?? 0
        self.longitude = data["longitude"] as? Double ?? 0
        self.timezone = data["timezone"] as? String ?? ""
        self.offset = data["offset"] as? Int ?? 0
        
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

extension NSDate {
    convenience init?(time: Double?) {
        guard let t = time else { return nil }
        self.init(timeIntervalSince1970: t)
    }
}
