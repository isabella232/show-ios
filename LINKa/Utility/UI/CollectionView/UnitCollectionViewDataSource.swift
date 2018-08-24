//
//  UnitCollectionViewDataSource.swift
//  LINKa
//
//  Created by Evan Butler on 24/08/2018.
//  Copyright © 2018 Evan Butler. All rights reserved.
//

import UIKit

/*
 * Наследуемся и переопределяем методы
 */
class UnitCollectionViewDataSource: NSObject, UICollectionViewDelegate, UICollectionViewDataSource {
  
  /*
   * Генерация по индексу
   */
  @objc internal func unit(from indexPath: IndexPath) -> UIAnyCellUnitProtocol? {
    return nil
  }
  
  func setup(for collectionView: UICollectionView) {
    collectionView.dataSource = self
    collectionView.delegate = self
  }
  
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return 0
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    guard let item = self.unit(from: indexPath) else { return UICollectionViewCell() }
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: item.reuseId, for: indexPath)
    item.fill(cell: cell)
    return cell
  }
  
  func updateVisibleCells(in collectionView: UICollectionView) {
    for cell in collectionView.visibleCells {
      guard
        let indexPath = collectionView.indexPath(for: cell),
        let item = unit(from: indexPath) else {
          continue
      }
      item.fill(cell: cell)
    }
  }
}

