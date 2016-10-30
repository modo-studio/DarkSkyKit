import Foundation

public struct ForecastFlags {
    public var darkskyStations: [String]?
    public var datapointStations: [String]?
    public var isdStations: [String]?
    public var lampStations: [String]?
    public var metarStations: [String]?
    public var madisStations: [String]?
    public var metnoLicense: [String]?
    public var sources: [String]?
    public var units: String?

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
