//
//  FillableProtocol.swift
//  LINKa
//
//  Created by Evan Butler on 24/08/2018.
//  Copyright © 2018 Evan Butler. All rights reserved.
//

import UIKit

protocol FillableProtocol {
  associatedtype DataType
  /*
   * Для вызова в tableView.cellForRowAtIndexPath
   */
  func fill(_ data: DataType)
  /*
   * Для вызова в tableView.willDisplayCell и при обновлении видимых ячеек (тут можно запустить например анимацию перехода в состояние)
   */
  func update(_ data: DataType)
}

