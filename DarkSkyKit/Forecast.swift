import Foundation

public struct Forecast {
    public var latitude: Double
    public var longitude: Double
    public var timezone: String
    public var offset: Int
    public var currently: ForecastDataPoint?
    public var minutely: [ForecastDataPoint]?
    public var hourly: [ForecastDataPoint]?
    public var daily: [ForecastDataPoint]?
    public var alerts: [ForecastAlert]?
    public var flags: ForecastFlags?

    init(data: [String:AnyObject]) {
        self.latitude = data["latitude"] as? Double ?? 0
        self.longitude = data["longitude"] as? Double ?? 0
        self.timezone = data["timezone"] as? String ?? ""
        self.offset = data["offset"] as? Int ?? 0

        if let currently = data["currently"] as? [String: AnyObject] {
            self.currently = ForecastDataPoint.map(currently)
        }

        if let minutely = data["minutely"] as? [String: AnyObject],
            let minutelyData = minutely["data"] as? [[String: AnyObject]] {
            self.minutely = minutelyData.map(ForecastDataPoint.map)
        }

        if let hourly = data["hourly"] as? [String: AnyObject],
            let hourlyData = hourly["data"] as? [[String: AnyObject]] {
            self.hourly = hourlyData.map(ForecastDataPoint.map)
        }

        if let daily = data["daily"] as? [String: AnyObject],
            let dailyData = daily["data"] as? [[String: AnyObject]] {
            self.daily = dailyData.map(ForecastDataPoint.map)
        }

        if let alerts = data["alerts"] as? [[String: AnyObject]] {
            self.alerts = alerts.map(ForecastAlert.map)
        }

        if let flags = data["flags"] as? [String: AnyObject] {
            self.flags = ForecastFlags.map(flags)
        }
    }
}

extension Date {
    init?(time: Double?) {
        guard let t = time else { return nil }
        self.init(timeIntervalSince1970: t)
    }
}
