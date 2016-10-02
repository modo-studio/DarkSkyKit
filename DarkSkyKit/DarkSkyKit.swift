import Foundation

public struct DarkSkyKit {
    public let configuration: Configuration
    
    public init(_ apiToken: String) {
        self.configuration = Configuration(token: apiToken)
    }

    public init(_ configuration: Configuration) {
        self.configuration = configuration
    }
}
