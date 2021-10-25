//
//  Extension+UIViewController.swift
//  Alerts
//
//  Created by Apps Team Mac book Air on 19/10/21.
//

import Foundation
import UIKit

extension UIViewController{
    func showAlert(title:String,message: String,handlerOk:((UIAlertAction) -> Void)?,handlerCancel:((UIAlertAction) -> Void)?){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "Ok", style: .destructive,handler:handlerOk)
        let actionCancel = UIAlertAction(title: "Cancel", style: .cancel,handler:handlerCancel)

        alert.addAction(action)
        alert.addAction(actionCancel)
        DispatchQueue.main.async {
            self.present(alert, animated: true, completion: nil)
        }
    }
}
