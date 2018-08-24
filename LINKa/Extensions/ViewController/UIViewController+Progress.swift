//
//  UIViewController+Progress.swift
//  LINKa
//
//  Created by Evan Butler on 24/08/2018.
//  Copyright © 2018 Evan Butler. All rights reserved.
//

import UIKit
import MBProgressHUD

extension UIViewController {
  func showProgress() {
    MBProgressHUD.showAdded(to: self.view, animated: true)
  }
  func hideProgress() {
    MBProgressHUD.hide(for: self.view, animated: true)
  }
}
