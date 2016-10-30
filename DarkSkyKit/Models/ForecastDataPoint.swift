import Foundation

public struct ForecastDataPoint {
    public var time: Date?
    public var summary: String?
    public var icon: String?
    public var sunriseTime: Date?
    public var sunsetTime: Date?
    public var moonPhase: Double?
    public var nearestStormDistance: Double?
    public var nearestStormBearing: Double?
    public var precipIntensity: Double?
    public var precipIntensityMax: Double?
    public var precipIntensityMaxTime: Date?
    public var precipProbability: Double?
    public var precipType: String?
    public var precipAccumulation: Double?
    public var temperature: Double?
    public var temperatureMin: Double?
    public var temperatureMinTime: Date?
    public var temperatureMax: Double?
    public var temperatureMaxTime: Date?
    public var apparentTemperature: Double?
    public var apparentTemperatureMin: Double?
    public var apparentTemperatureMinTime: Date?
    public var apparentTemperatureMax: Double?
    public var apparentTemperatureMaxTime: Date?
    public var dewPoint: Double?
    public var windSpeed: Double?
    public var windBearing: Double?
    public var cloudCover: Double?
    public var humidity: Double?
    public var pressure: Double?
    public var visibility: Double?
    public var ozone: Double?

    static func map(_ data: [String: AnyObject]) -> ForecastDataPoint {
        var p = ForecastDataPoint()
        p.time = Date(time: data["time"] as? Double)
        p.summary = data["summary"] as? String ?? ""
        p.icon = data["icon"] as? String ?? ""
        p.sunriseTime = Date(time: data["sunriseTime"] as? Double)
        p.sunsetTime = Date(time: data["sunsetTime"] as? Double)
        p.moonPhase = data["moonPhase"] as? Double ?? nil
        p.nearestStormDistance = data["nearestStormDistance"] as? Double ?? nil
        p.nearestStormBearing = data["nearestStormBearing"] as? Double ?? nil
        p.precipIntensity = data["precipIntensity"] as? Double ?? nil
        p.precipIntensityMax = data["precipIntensityMax"] as? Double ?? nil
        p.precipIntensityMaxTime = Date(time: data["precipIntensityMaxTime"] as? Double)
        p.precipProbability = data["precipProbability"] as? Double ?? nil
        p.precipType = data["precipType"] as? String ?? nil
        p.precipAccumulation = data["precipAccumulation"] as? Double ?? nil
        p.temperature = data["temperature"] as? Double ?? nil
        p.temperatureMin = data["temperatureMin"] as? Double ?? nil
        p.temperatureMinTime = Date(time: data["temperatureMinTime"] as? Double)
        p.temperatureMax = data["temperatureMax"] as? Double ?? nil
        p.temperatureMaxTime = Date(time: data["temperatureMaxTime"] as? Double)
        p.apparentTemperature = data["apparentTemperature"] as? Double ?? nil
        p.apparentTemperatureMin = data["apparentTemperatureMin"] as? Double ?? nil
        p.apparentTemperatureMinTime = Date(time: data["apparentTemperatureMinTime"] as? Double)
        p.apparentTemperatureMax = data["apparentTemperatureMax"] as? Double ?? nil
        p.apparentTemperatureMaxTime = Date(time: data["apparentTemperatureMaxTime"] as? Double)
        p.dewPoint = data["dewPoint"] as? Double ?? nil
        p.windSpeed = data["windSpeed"] as? Double ?? nil
        p.windBearing = data["windBearing"] as? Double ?? nil
        p.cloudCover = data["cloudCover"] as? Double ?? nil
        p.humidity = data["humidity"] as? Double ?? nil
        p.pressure = data["pressure"] as? Double ?? nil
        p.visibility = data["visibility"] as? Double ?? nil
        p.ozone = data["ozone"] as? Double ?? nil
        return p
    }
}
