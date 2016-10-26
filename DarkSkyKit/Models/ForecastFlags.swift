import Foundation

public struct ForecastFlags {
    var darkskyStations: [String]?
    var datapointStations: [String]?
    var isdStations: [String]?
    var lampStations: [String]?
    var metarStations: [String]?
    var madisStations: [String]?
    var metnoLicense: [String]?
    var sources: [String]?
    var units: String?
    
    static func map(_ data: [String: AnyObject]) -> ForecastFlags {
        var f = ForecastFlags()
        f.darkskyStations = data["darksky-stations"] as? [String] ?? nil
        f.datapointStations = data["datapoint-stations"] as? [String] ?? nil
        f.isdStations = data["isd-stations"] as? [String] ?? nil
        f.lampStations = data["lamp-stations"] as? [String] ?? nil
        f.metarStations = data["metar-stations"] as? [String] ?? nil
        f.madisStations = data["madis-stations"] as? [String] ?? nil
        f.metnoLicense = data["metno-license"] as? [String] ?? nil
        f.sources = data["sources"] as? [String] ?? nil
        f.units = data["units"] as? String ?? nil
        return f
    }
}
