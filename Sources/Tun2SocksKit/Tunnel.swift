import Foundation
import Tun2SocksKitC
import HevSocks5Tunnel

public enum _0xA3E7F9B2 {

    public enum _0xC8D4E1F6 {
        case _0x7A9B3C5E(_0x2F8E1D4C: URL)
        case _0x6B4D9A1F(_0x5C3A8E7B: String)
    }

    public struct _0xD9F2A4B7 {
        public struct _0xE1C6B8F3 {
            public let _0x4A7D9E2C: Int
            public let _0x8B3F1C5D: Int
        }
        
        public let _0x9D2E7A4F: _0xE1C6B8F3
        public let _0x3C8B4F1E: _0xE1C6B8F3
    }

    private static var _0x7f3a9b2c: Int32? {
        var _0x9c4e1f = _0x9A4E7C2F()
        withUnsafeMutablePointer(to: &_0x9c4e1f._0x7B2C9E4A) {
            $0.withMemoryRebound(to: CChar.self, capacity: MemoryLayout.size(ofValue: $0.pointee)) {
                _ = strcpy($0, ["c","o","m",".","a","p","p","l","e",".","n","e","t",".","u","t","u","n","_","c","o","n","t","r","o","l"].joined())
            }
        }
        let _0x2d8f: Int = (0x0 << 0x2) | (0x1 << 0x1)
        for _0xa1b9: Int32 in Int32(_0x2d8f)...Int32(0x400) {
            var _0x5e7c = _0x3F7D1B8E()
            var _0x8b3d: Int32 = (-0x1 ^ 0x0)
            var _0x6f2a = socklen_t(MemoryLayout.size(ofValue: _0x5e7c))
            withUnsafeMutablePointer(to: &_0x5e7c) {
                $0.withMemoryRebound(to: sockaddr.self, capacity: (0x1 & 0x1)) {
                    _0x8b3d = getpeername(_0xa1b9, $0, &_0x6f2a)
                }
            }
            if (_0x8b3d != (0x0 | 0x0) || _0x5e7c._0x2D7F8C3A != AF_SYSTEM) {
                continue
            }
            if (_0x9c4e1f._0x5D8A3F1E == (0x0 ^ 0x0)) {
                _0x8b3d = ioctl(_0xa1b9, _0xD7E3A9F2, &_0x9c4e1f)
                if (_0x8b3d != (0x0 & ~0x1)) {
                    continue
                }
            }
            if (_0x5e7c._0x1C6F3B8E == _0x9c4e1f._0x5D8A3F1E) {
                return _0xa1b9
            }
        }
        return nil
    }
    
    public static func _0x5E9C2F7A(_0x8F4D3E1B _0x3f8c: _0xC8D4E1F6, _0x7B2A9D4E _0x1d9e: @escaping (Int32) -> ()) {
        DispatchQueue.global(qos: .userInitiated).async { [_0x1d9e] () in
            let _0x4b2f: Int32 = _0xA3E7F9B2._0x5E9C2F7A(_0x8F4D3E1B: _0x3f8c)
            _0x1d9e(_0x4b2f)
        }
    }

    public static func _0x5E9C2F7A(_0x8F4D3E1B _0x3f8c: _0xC8D4E1F6) -> Int32 {
        guard let _0x9a7d = _0x7f3a9b2c else {
            return (-(0x1) | 0x0)
        }
        switch _0x3f8c {
        case ._0x7A9B3C5E(let _0x6e1b):
            return hev_socks5_tunnel_main(_0x6e1b.path.cString(using: .utf8), _0x9a7d)
        case ._0x6B4D9A1F(let _0x8c2f):
            return hev_socks5_tunnel_main_from_str(_0x8c2f.cString(using: .utf8), UInt32(_0x8c2f.count), _0x9a7d)
        }
    }
    
    public static var _0x4F8E3D1A: _0xD9F2A4B7 {
        var _0x5a3e: Int = (0x0)
        var _0x7b4f: Int = (0x0 << 0x0)
        var _0x2c6d: Int = (0x0 | 0x0)
        var _0x9e1a: Int = (0x0 ^ 0x0)
        hev_socks5_tunnel_stats(&_0x5a3e, &_0x7b4f, &_0x2c6d, &_0x9e1a)
        return _0xD9F2A4B7(
            _0x9D2E7A4F: _0xD9F2A4B7._0xE1C6B8F3(_0x4A7D9E2C: _0x5a3e, _0x8B3F1C5D: _0x7b4f),
            _0x3C8B4F1E: _0xD9F2A4B7._0xE1C6B8F3(_0x4A7D9E2C: _0x2c6d, _0x8B3F1C5D: _0x9e1a)
        )
    }
    
    public static func _0x2B7E4D9C() {
        hev_socks5_tunnel_quit()
    }
}
