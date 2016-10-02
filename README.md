![DarkSkyKit: DarkSkyKit API Client in Swift](assets/darksky-header.png)

[![Build Status](https://travis-ci.org/carambalabs/DarkSkyKit.svg?branch=master)](https://travis-ci.org/carambalabs/DarkSkyKit)
[![CocoaPods Compatible](https://img.shields.io/cocoapods/v/DarkSkyKit.svg)](https://img.shields.io/cocoapods/v/DarkSkyKit.svg)
[![codecov](https://codecov.io/gh/carambalabs/DarkSkyKit/branch/master/graph/badge.svg)](https://codecov.io/gh/carambalabs/DarkSkyKit)

[DarkSky.net](https://darksky.net) API client written in Swift.

## Usage

```swift
import DarkSkyKit
```

### Init

#### Basic Configuration
Init the DarkSkyKit client using only the api token.
```swift
let forecastClient = DarkSkyKit(apiToken: "AAA")
```

#### Extended Configuration
Init the DarkSkyKit client using a custom configuration. Check out the [darksky.net documentation](https://darksky.net/dev/) to know more about these properties (units, exclude, extend & language).
```swift
let c = Configuration(token: "AAA", units: .si, exclude: .alerts, lang: "ES")
let forecastClient = DarkSkyKit(configuration: c)
```

### Fetch
DarkSkt.net API provides 2 ways of fetch weather data: current and time machine.

#### Current
Fetch current weather conditions based on a given location.
```swift
forecastClient.current(latitude: 0.34565, longitude: 1.64559) { result in
  switch result {
    case .Success(let forecast):
      // Manage weather data using the Forecast model. Ex:
      if let current = forecast.currently {
        let t = current.temperature
      }
    case .Failure(let error):
      // Manage error case
  }
}

```

#### Time Machine
Fetch weather conditions based on a given date and location.
```swift
let d = NSDate(timeIntervalSinceNow: timestamp)
forecastClient.current(latitude: 0.34565, longitude: 1.64559, date: d) { result in
  // Manage result
}

```

## Requirements

* iOS 8.0+ / Mac OS X 10.9+ / tvOS 9.0+ / watchOS 2.0+
* Xcode 7.3+

## Installation

To install it, simply add the following line to your Podfile:

```ruby
pod "DarkSkyKit"
```

## About

<img src="https://github.com/carambalabs/Foundation/blob/master/ASSETS/avatar_rounded.png?raw=true" width="70" />

This project is funded and maintained by [Caramba](http://caramba.io). We 💛 open source software!

Check out our other [open source projects](https://github.com/carambalabs/), read our [blog](http://blog.caramba.io) or say :wave: on twitter [@carambalabs](http://twitter.com/carambalabs).

## Contribute

Contributions are welcome :metal: We encourage developers like you to help us improve the projects we've shared with the community. Please see the [Contributing Guide](https://github.com/carambalabs/Foundation/blob/master/CONTRIBUTING.md) and the [Code of Conduct](https://github.com/carambalabs/Foundation/blob/master/CONDUCT.md).

## License

DarkSkyKit is available under the MIT license. See the LICENSE file for more info.
