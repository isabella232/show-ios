//
// This is a generated file, do not edit!
// Generated by R.swift, see https://github.com/mac-cain13/R.swift
//

import Foundation
import Rswift
import UIKit

/// This `R` struct is generated and contains references to static resources.
struct R: Rswift.Validatable {
  fileprivate static let applicationLocale = hostingBundle.preferredLocalizations.first.flatMap(Locale.init) ?? Locale.current
  fileprivate static let hostingBundle = Bundle(for: R.Class.self)
  
  static func validate() throws {
    try intern.validate()
  }
  
  /// This `R.color` struct is generated, and contains static references to 0 colors.
  struct color {
    fileprivate init() {}
  }
  
  /// This `R.file` struct is generated, and contains static references to 0 files.
  struct file {
    fileprivate init() {}
  }
  
  /// This `R.font` struct is generated, and contains static references to 0 fonts.
  struct font {
    fileprivate init() {}
  }
  
  /// This `R.image` struct is generated, and contains static references to 0 images.
  struct image {
    fileprivate init() {}
  }
  
  /// This `R.nib` struct is generated, and contains static references to 2 nibs.
  struct nib {
    /// Nib `CardSelectorViewController`.
    static let cardSelectorViewController = _R.nib._CardSelectorViewController()
    /// Nib `FolderSelectorViewController`.
    static let folderSelectorViewController = _R.nib._FolderSelectorViewController()
    
    /// `UINib(name: "CardSelectorViewController", in: bundle)`
    static func cardSelectorViewController(_: Void = ()) -> UIKit.UINib {
      return UIKit.UINib(resource: R.nib.cardSelectorViewController)
    }
    
    /// `UINib(name: "FolderSelectorViewController", in: bundle)`
    static func folderSelectorViewController(_: Void = ()) -> UIKit.UINib {
      return UIKit.UINib(resource: R.nib.folderSelectorViewController)
    }
    
    fileprivate init() {}
  }
  
  /// This `R.reuseIdentifier` struct is generated, and contains static references to 0 reuse identifiers.
  struct reuseIdentifier {
    fileprivate init() {}
  }
  
  /// This `R.segue` struct is generated, and contains static references to 0 view controllers.
  struct segue {
    fileprivate init() {}
  }
  
  /// This `R.storyboard` struct is generated, and contains static references to 2 storyboards.
  struct storyboard {
    /// Storyboard `LaunchScreen`.
    static let launchScreen = _R.storyboard.launchScreen()
    /// Storyboard `Main`.
    static let main = _R.storyboard.main()
    
    /// `UIStoryboard(name: "LaunchScreen", bundle: ...)`
    static func launchScreen(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.launchScreen)
    }
    
    /// `UIStoryboard(name: "Main", bundle: ...)`
    static func main(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.main)
    }
    
    fileprivate init() {}
  }
  
  /// This `R.string` struct is generated, and contains static references to 1 localization tables.
  struct string {
    /// This `R.string.localizable` struct is generated, and contains static references to 3 localization keys.
    struct localizable {
      /// Base translation: ОК
      /// 
      /// Locales: Base
      static let ok = Rswift.StringResource(key: "ok", tableName: "Localizable", bundle: R.hostingBundle, locales: ["Base"], comment: nil)
      /// Base translation: Отмена
      /// 
      /// Locales: Base
      static let cancel = Rswift.StringResource(key: "cancel", tableName: "Localizable", bundle: R.hostingBundle, locales: ["Base"], comment: nil)
      /// Base translation: Ошибка
      /// 
      /// Locales: Base
      static let error = Rswift.StringResource(key: "error", tableName: "Localizable", bundle: R.hostingBundle, locales: ["Base"], comment: nil)
      
      /// Base translation: ОК
      /// 
      /// Locales: Base
      static func ok(_: Void = ()) -> String {
        return NSLocalizedString("ok", bundle: R.hostingBundle, value: "ОК", comment: "")
      }
      
      /// Base translation: Отмена
      /// 
      /// Locales: Base
      static func cancel(_: Void = ()) -> String {
        return NSLocalizedString("cancel", bundle: R.hostingBundle, value: "Отмена", comment: "")
      }
      
      /// Base translation: Ошибка
      /// 
      /// Locales: Base
      static func error(_: Void = ()) -> String {
        return NSLocalizedString("error", bundle: R.hostingBundle, value: "Ошибка", comment: "")
      }
      
      /// This `R.string.localizable.errors` struct is generated, and contains static references to 0 localization keys.
      struct errors {
        /// This `R.string.localizable.errors.network` struct is generated, and contains static references to 4 localization keys.
        struct network {
          /// Base translation: Can not connect to remote host
          /// 
          /// Locales: Base
          static let cantConnectHost = Rswift.StringResource(key: "errors.network.cantConnectHost", tableName: "Localizable", bundle: R.hostingBundle, locales: ["Base"], comment: nil)
          /// Base translation: Can not find remote host
          /// 
          /// Locales: Base
          static let cantFindHost = Rswift.StringResource(key: "errors.network.cantFindHost", tableName: "Localizable", bundle: R.hostingBundle, locales: ["Base"], comment: nil)
          /// Base translation: Network connection lost
          /// 
          /// Locales: Base
          static let connectionLost = Rswift.StringResource(key: "errors.network.connectionLost", tableName: "Localizable", bundle: R.hostingBundle, locales: ["Base"], comment: nil)
          /// Base translation: Request timeouted
          /// 
          /// Locales: Base
          static let timedOut = Rswift.StringResource(key: "errors.network.timedOut", tableName: "Localizable", bundle: R.hostingBundle, locales: ["Base"], comment: nil)
          
          /// Base translation: Can not connect to remote host
          /// 
          /// Locales: Base
          static func cantConnectHost(_: Void = ()) -> String {
            return NSLocalizedString("errors.network.cantConnectHost", bundle: R.hostingBundle, value: "Can not connect to remote host", comment: "")
          }
          
          /// Base translation: Can not find remote host
          /// 
          /// Locales: Base
          static func cantFindHost(_: Void = ()) -> String {
            return NSLocalizedString("errors.network.cantFindHost", bundle: R.hostingBundle, value: "Can not find remote host", comment: "")
          }
          
          /// Base translation: Network connection lost
          /// 
          /// Locales: Base
          static func connectionLost(_: Void = ()) -> String {
            return NSLocalizedString("errors.network.connectionLost", bundle: R.hostingBundle, value: "Network connection lost", comment: "")
          }
          
          /// Base translation: Request timeouted
          /// 
          /// Locales: Base
          static func timedOut(_: Void = ()) -> String {
            return NSLocalizedString("errors.network.timedOut", bundle: R.hostingBundle, value: "Request timeouted", comment: "")
          }
          
          fileprivate init() {}
        }
        
        fileprivate init() {}
      }
      
      fileprivate init() {}
    }
    
    fileprivate init() {}
  }
  
  fileprivate struct intern: Rswift.Validatable {
    fileprivate static func validate() throws {
      // There are no resources to validate
    }
    
    fileprivate init() {}
  }
  
  fileprivate class Class {}
  
  fileprivate init() {}
}

struct _R {
  struct nib {
    struct _CardSelectorViewController: Rswift.NibResourceType {
      let bundle = R.hostingBundle
      let name = "CardSelectorViewController"
      
      func firstView(owner ownerOrNil: AnyObject?, options optionsOrNil: [NSObject : AnyObject]? = nil) -> UIKit.UIView? {
        return instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? UIKit.UIView
      }
      
      fileprivate init() {}
    }
    
    struct _FolderSelectorViewController: Rswift.NibResourceType {
      let bundle = R.hostingBundle
      let name = "FolderSelectorViewController"
      
      func firstView(owner ownerOrNil: AnyObject?, options optionsOrNil: [NSObject : AnyObject]? = nil) -> UIKit.UIView? {
        return instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? UIKit.UIView
      }
      
      fileprivate init() {}
    }
    
    fileprivate init() {}
  }
  
  struct storyboard {
    struct launchScreen: Rswift.StoryboardResourceWithInitialControllerType {
      typealias InitialController = UIKit.UIViewController
      
      let bundle = R.hostingBundle
      let name = "LaunchScreen"
      
      fileprivate init() {}
    }
    
    struct main: Rswift.StoryboardResourceWithInitialControllerType {
      typealias InitialController = ViewController
      
      let bundle = R.hostingBundle
      let name = "Main"
      
      fileprivate init() {}
    }
    
    fileprivate init() {}
  }
  
  fileprivate init() {}
}
