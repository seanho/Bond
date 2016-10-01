//
//  CALayerTests.swift
//  Bond
//
//  Created by Tony Arnold on 16/04/2015.
//  Copyright (c) 2015 Bond. All rights reserved.
//

import Bond
import QuartzCore
import CoreGraphics
import XCTest

#if os(iOS)
  import UIKit
  typealias Color = UIColor
  #else
  import AppKit
  typealias Color = NSColor
#endif

class CALayerTests: XCTestCase {
  
  func testCALayerBackgroundColorBond() {
    let driver = Observable<CGColor>(Color.white.cgColor)
    let layer = CALayer()

    layer.backgroundColor = Color.red.cgColor
    XCTAssert(layer.backgroundColor == Color.red.cgColor, "Initial value")
    
    driver.bindTo(layer.bnd_backgroundColor)
    XCTAssert(layer.backgroundColor == Color.white.cgColor, "Value after binding")
    
    driver.value = Color.green.cgColor
    XCTAssert(layer.backgroundColor == Color.green.cgColor, "Value after dynamic change")
  }
  
}
