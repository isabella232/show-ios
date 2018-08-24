//
//  UICollectionView+RegisterCells.swift
//  LINKa
//
//  Created by Evan Butler on 24/08/2018.
//  Copyright © 2018 Evan Butler. All rights reserved.
//

import UIKit

extension UICollectionView {
  func registerReusableCell(_ reusable: ReusableProtocol.Type) {
    if let xibName = reusable.xibName?() {
      register(UINib(nibName: xibName, bundle: nil), forCellWithReuseIdentifier: reusable.reusableIdentifier())
    } else {
      register(reusable.self, forCellWithReuseIdentifier: reusable.reusableIdentifier())
    }
    
  }
}
