//
//  UIViewController+Observing.swift
//  LINKa
//
//  Created by Evan Butler on 24/08/2018.
//  Copyright © 2018 Evan Butler. All rights reserved.
//

import UIKit
import RxSwift

protocol DisposableContainer: class {
  var disposeBag: DisposeBag! { get }
}

extension DisposableContainer where Self: UIViewController {
  func observeAction<T>( _ observable: Observable<T>, onNext: ((T) -> Void)? = nil, onCompleted: (() -> Void)? = nil ) {
    observable
      .observeOn(MainScheduler.instance)
      .subscribe(onNext: { (data) in
        onNext?(data)
      }, onError: { (error) in
        print("*** error: ", error.localizedDescription)
      }, onCompleted: {
        onCompleted?()
      })
      .disposed(by: disposeBag)
  }
  
  func observeProgress<T>( _ observable: Observable<T>, onNext: ((T) -> Void)? = nil, onError: ((Swift.Error) -> Void)? = nil, onCompleted: (() -> Void)? = nil ) {
    self.showProgress()
    observable
      .observeOn(MainScheduler.instance)
      .subscribe(
        onNext: { [weak self] (data) in
          self?.hideProgress()
          onNext?(data)
        },
        onError: { [weak self] (error) in
          self?.hideProgress()
          guard let onError = onError else {
//            self?.showError(error)
            return
          }
          
          onError(error)
        },
        onCompleted: { [weak self] in
          self?.hideProgress()
          onCompleted?()
        })
      .disposed(by: self.disposeBag)
  }
}

class UIRxViewController: UIViewController, DisposableContainer {
  var disposeBag: DisposeBag!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    self.disposeBag = DisposeBag()
  }
  
  deinit {
    self.disposeBag = nil
  }
}
