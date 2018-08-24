//
//  FlatUnitCollectionViewDataSource.swift
//  LINKa
//
//  Created by Evan Butler on 24/08/2018.
//  Copyright © 2018 Evan Butler. All rights reserved.
//

import UIKit

class FlatUnitCollectionViewDataSource: UnitCollectionViewDataSource {
  /*
   * Сами данные для ячеек
   */
  var units:[UIAnyCellUnitProtocol] = []
  
  override func unit(from indexPath: IndexPath) -> UIAnyCellUnitProtocol? {
    guard indexPath.row >= 0 && indexPath.row < units.count else { return nil }
    return units[indexPath.row]
  }
  
  override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return units.count
  }
  
}

