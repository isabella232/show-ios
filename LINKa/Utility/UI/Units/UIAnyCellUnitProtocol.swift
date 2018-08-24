//
//  UIAnyCellUnitProtocol.swift
//  LINKa
//
//  Created by Evan Butler on 24/08/2018.
//  Copyright © 2018 Evan Butler. All rights reserved.
//

import UIKit

@objc protocol UIAnyCellUnitProtocol {
  var reuseId: String { get }
  var onSelected: (() -> Void)? { get set }
  
  func fill(cell: Any)
  func update(cell: Any)
  func itemData() -> Any
}

