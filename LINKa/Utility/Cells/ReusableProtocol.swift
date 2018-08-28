//
//  ReusableProtocol.swift
//  LINKa
//
//  Created by Evan Butler on 24/08/2018.
//  Copyright © 2018 Evan Butler. All rights reserved.
//

import UIKit

@objc
protocol ReusableProtocol: class {
  // статические методы вместо статических var'ов чтобы была возможность переопределить эти значения при наследовании
  static func reusableIdentifier() -> String
  
  @objc optional static func xibName() -> String
}

extension ReusableProtocol where Self: UIView {
  static func reusableIdentifier() -> String {
    return String(describing: self)
  }
}
