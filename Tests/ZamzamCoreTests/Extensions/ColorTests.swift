//
//  ColorTests.swift
//  ZamzamCore
//
//  Created by Basem Emara on 10/13/16.
//  Copyright © 2016 Zamzam Inc. All rights reserved.
//

import XCTest
import ZamzamCore

#if canImport(UIKit)
import UIKit.UIColor
typealias PlatformColor = UIColor
#elseif os(macOS)
import AppKit.NSColor
typealias PlatformColor = NSColor
#endif

final class ColorTests: XCTestCase {}

extension ColorTests {

    func testRGBVsHex() {
        XCTAssertEqual(UIColor(rgb: (77, 116, 107)), UIColor(hex: 0x4D746B))
    }
}

extension ColorTests {

    func testRandom() {
        XCTAssertNotEqual(UIColor.random, .random)
    }
}
