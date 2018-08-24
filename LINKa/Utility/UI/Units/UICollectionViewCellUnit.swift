//
//  UICollectionViewCellUnit.swift
//  LINKa
//
//  Created by Evan Butler on 24/08/2018.
//  Copyright © 2018 Evan Butler. All rights reserved.
//

import UIKit

class UIAnyCellUnit<Cell: FillableProtocol>: UIAnyCellUnitProtocol {
  typealias ConfiguratorType = ((_ cell: Cell) -> Void)
  
  var data: Cell.DataType //Собственно данные которые попадут в FillableProtocol.fill и .update
  var reuseId: String //обязательно указываем обычный reusable identifier
  var configurator: ConfiguratorType?
  var onSelected: (() -> Void)?
  
  init(data: Cell.DataType, reuseId: String, configurator: ConfiguratorType?) {
    self.data = data
    self.reuseId = reuseId
    self.configurator = configurator
  }
  
  func fill(cell: Any) {
    guard let cell = cell as? Cell else { return }
    
    configurator?(cell)
    
    cell.fill(data)
  }
  
  func update(cell: Any) {
    guard let cell = cell as? Cell else { return }
    
    cell.update(data)
  }
  
  func itemData() -> Any {
    return data
  }
}

extension UIAnyCellUnit where Cell: ReusableProtocol {
  convenience init(data: Cell.DataType, configurator: ConfiguratorType?) {
    self.init(data: data, reuseId: Cell.reusableIdentifier(), configurator: configurator)
  }
}

