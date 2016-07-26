import Foundation

public struct ForecastFlags {
    let darkskyStations: [String]?
    let datapointStations: [String]?
    let isdStations: [String]?
    let lampStations: [String]?
    let metarStations: [String]?
    let madisStations: [String]?
    let metnoLicense: [String]?
    let sources: [String]?
    let units: String?
    
    static func map(data: [String: AnyObject]) -> ForecastFlags {
        
    }
}
