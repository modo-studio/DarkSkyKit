import Foundation

public struct DarkSkyKit {
    public let configuration: Configuration

    public init(apiToken: String) {
        self.configuration = Configuration(token: apiToken)
    }

    public init(configuration: Configuration) {
        self.configuration = configuration
    }
}
