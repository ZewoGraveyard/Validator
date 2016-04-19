# Validator
[![Zewo 0.5][zewo-badge]](http://zewo.io)
[![Swift 3][swift-badge]](https://swift.org)
[![Platform Linux][platforms-badge]](https://swift.org)
[![License MIT][mit-badge]](https://tldrlegal.com/license/mit-license)

**Validator** is a protocol for defining validating functionality.

## Usage

```swift
struct NumberValidator: Validator {
    func validate(value: Int) throws {
        if value < 0 {
            throw Error.negativeValue
        }
    }
    enum Error: ErrorProtocol {
        case negativeValue
    }
}
```

## Community

[![Slack](http://s13.postimg.org/ybwy92ktf/Slack.png)](http://slack.zewo.io)

Join us on [Slack](http://slack.zewo.io).

License
-------

**Validator** is released under the MIT license. See LICENSE for details.

[zewo-badge]: https://img.shields.io/badge/Zewo-0.5-FF7565.svg?style=flat
[swift-badge]: https://img.shields.io/badge/Swift-3.0-orange.svg?style=flat
[mit-badge]: https://img.shields.io/badge/License-MIT-blue.svg?style=flat
[platforms-badge]: https://img.shields.io/badge/Platform-Mac%20%26%20Linux-lightgray.svg
