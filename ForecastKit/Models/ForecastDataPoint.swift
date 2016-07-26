import Foundation

public struct ForecastDataPoint {
    let time: NSDate?
    let summary: String?
    let icon: String?
    let sunriseTime: NSDate?
    let sunsetTime: NSDate?
    let moonPhase: Double?
    let nearestStormDistance: Double?
    let nearestStormBearing: Double?
    let precipIntensity: Double?
    let precipIntensityMax: Double?
    let precipIntensityMaxTime: NSDate?
    let precipProbability: Double?
    let precipType: String?
    let precipAccumulation: Double?
    let temperature: Double?
    let temperatureMin: Double?
    let temperatureMinTime: NSDate?
    let temperatureMax: Double?
    let temperatureMaxTime: NSDate?
    let apparentTemperature: Double?
    let apparentTemperatureMin: Double?
    let apparentTemperatureMinTime: NSDate?
    let apparentTemperatureMax: Double?
    let apparentTemperatureMaxTime: NSDate?
    let dewPoint: Double?
    let windSpeed: Double?
    let windBearing: Double?
    let cloudCover: Double?
    let humidity: Double?
    let pressure: Double?
    let visibility: Double?
    let ozone: Double?
    
    static func map(data: [String: AnyObject]) -> ForecastDataPoint {

    }
}
