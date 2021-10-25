//
//  ViewController.swift
//  Alerts
//
//  Created by Apps Team Mac book Air on 19/10/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var displaylabel:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        displaylabel.text = "Nothing"    }

    @IBAction func clickme(_ sender: Any) {
        showAlert(title: "Alert", message: "Are you sure you want to logout", handlerOk: { action in
            self.view.backgroundColor = UIColor.yellow
        }, handlerCancel: {actionCancel in
            self.view.backgroundColor = UIColor.systemOrange
            self.view.backgroundColor = .yellow
        })
    }
    //add comments
    @IBAction func clickSave(_ sender: Any) {
        let alertView = UIAlertController(title: "Save", message: "Do you really want to save?", preferredStyle: .actionSheet)
//        let cancel = UIAlertAction(title: "Cancel", style: .destructive) {(action) in
//            self.displaylabel.text = "Cancelled"
        let save = UIAlertAction(title: "Save", style: .default) {(action) in
            self.displaylabel.text = "Saved Successfully"
        }
            //alertView.addAction(cancel)
            alertView.addAction(save)
        present(alertView, animated: true, completion: nil)
    }
    
}

