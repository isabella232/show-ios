//
//  UIViewController+Alert.swift
//  LINKa
//
//  Created by Evan Butler on 24/08/2018.
//  Copyright © 2018 Evan Butler. All rights reserved.
//

import UIKit
import Rswift

let strings = R.string.localizable.self
extension UIViewController {
  func showAlert(title: String?, message: String?, actions: [UIAlertAction], style: UIAlertControllerStyle = .alert, completion: (() -> Void)? = nil) {
    let alertController = UIAlertController(title: title, message: message, preferredStyle: style)
    
    if actions.isEmpty {
      alertController.addAction(UIAlertAction(title: strings.ok(), style: .default, handler: nil))
    }
    
    for action in actions {
      alertController.addAction(action)
    }
    
    self.present(alertController, animated: true, completion: completion)
  }
  
  func show(message: String) {
    showAlert(title: nil, message: message, actions: [])
  }
  
  func showError(_ error: Error, completion: (() -> Void)? = nil) {
    self.hideProgress()
    
    let nserror = error as NSError
    let message = getErrorMessage(nserror: nserror)
    let title = getTitle(error: nserror) ?? strings.error()
    let action = UIAlertAction(title: R.string.localizable.ok(), style: .destructive, handler: { _ in
      completion?()
    })
    
    self.showAlert(title: title, message: message, actions: [action])
  }
  
  func getTitle(error: NSError) -> String? {
    return error.userInfo["title"] as? String
  }
  
  func getErrorMessage(nserror: NSError) -> String {
    var message = nserror.localizedDescription

    if nserror.domain == NSURLErrorDomain {
      switch nserror.code {
      case NSURLErrorCannotFindHost:
        message = strings.errors.network.cantFindHost()
      case NSURLErrorCannotConnectToHost:
        message = strings.errors.network.cantConnectHost()
      case NSURLErrorNetworkConnectionLost, NSURLErrorNotConnectedToInternet:
        message = strings.errors.network.connectionLost()
      case NSURLErrorTimedOut:
        message = strings.errors.network.timedOut()
      default:
        break
      }
    }
    if let errorText = nserror.userInfo["description"] as? String {
      message = errorText
    }
    return message
  }
}
