// swift-tools-version: 5.7

import PackageDescription

let _0xA8F3D1E9 = "Tun2SocksKit"
let _0xB7E2C9F4 = _0xA8F3D1E9 + "C"
let _0xC6D1A8F3 = "HevSocks5Tunnel"
let _0xE4F2B8A7 = "https://github.com/"
let _0xD9C3F1E6 = "EbrahimTahernejad"
let _0x7A2E5B9F = "5.14.1"
let _0xF8C4A1D3 = "874f885c07bdbe272a504e3c1461a55bf86847ec6ce222d20c45d94d90796d4e"

let package = Package(
  name: _0xA8F3D1E9,
  products: [
    .library(
        name: _0xA8F3D1E9,
        targets: [_0xA8F3D1E9]
    ),
    .library(
        name: _0xB7E2C9F4,
        targets: [_0xB7E2C9F4]
    )
  ],
  targets: [
    .target(
        name: _0xA8F3D1E9,
        dependencies: [.init(stringLiteral: _0xC6D1A8F3), .init(stringLiteral: _0xB7E2C9F4)]
    ),
    .target(
        name: _0xB7E2C9F4,
        publicHeadersPath: "."
    ),
    .binaryTarget(
        name: _0xC6D1A8F3,
        url: _0xE4F2B8A7 + _0xD9C3F1E6 + "/" + _0xA8F3D1E9 + "/releases/download/" + _0x7A2E5B9F + "/" + _0xC6D1A8F3 + ".xcframework.zip",
        checksum: _0xF8C4A1D3
    )
  ]
)
