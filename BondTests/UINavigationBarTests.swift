//
//  UINavigationBarTests.swift
//  Bond
//
//  Created by SatoShunsuke on 2015/10/23.
//  Copyright (c) 2015 Bond. All rights reserved.
//

import UIKit
import XCTest
import Bond

class UINavigationBarTests : XCTestCase {

  func testUINavigationBarBarTintColorBond() {
    let observable = Observable<UIColor>(UIColor.black)
    let bar = UINavigationBar()

    bar.barTintColor = UIColor.red
    XCTAssert(bar.barTintColor == UIColor.red, "Initial value")

    observable.bindTo(bar.bnd_barTintColor)
    XCTAssert(bar.barTintColor == UIColor.black, "Value after binding")

    observable.value = UIColor.blue
    XCTAssert(bar.barTintColor == UIColor.blue, "Value after observable change")
  }
}
