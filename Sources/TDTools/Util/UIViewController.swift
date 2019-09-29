//
//  File.swift
//  
//
//  Created by Tieda Wei on 2019-09-28.
//

import UIKit

extension UIViewController {
    
    public func showAlert(title: String, message: String, handlerOK:((UIAlertAction) -> Void)?, handlerCancel: ((UIAlertAction) -> Void)? = nil) {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let actionOk = UIAlertAction(title: "OK", style: .default, handler: handlerOK)
        let actionCancel = UIAlertAction(title: "Cancel", style: .cancel, handler: handlerCancel)
        
        alert.addAction(actionOk)
        alert.addAction(actionCancel)
        alert.preferredAction = actionOk
        
        DispatchQueue.main.async {
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    public func showAlert(title: String, message: String?) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let actionOk = UIAlertAction(title: "OK", style: .default)
        alert.addAction(actionOk)
        alert.preferredAction = actionOk
        DispatchQueue.main.async {
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    public var appVersion: String? {
        if let appInfo = Bundle.main.infoDictionary,
            let appVersion = appInfo["CFBundleShortVersionString"] as? String,
            let build = appInfo["CFBundleVersion"] as? String {
                return "\(appVersion).\(build)"
        }
        return nil
    }
    
    public var isLandscape: Bool {
        return view.frame.width > view.frame.height
    }
    
}

