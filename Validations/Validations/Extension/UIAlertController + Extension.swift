//
//  Alert + Extension.swift
//  LoginUI
//
//  Created by Yogesh Patel on 22/01/21.
//

import Foundation
import UIKit

extension UIViewController{
    
    // Global Alert
    // Define Your number of buttons, styles and completion
    
    public func openAlertBox (title:String,message:String,alertStyle:UIAlertController.Style,actionTitles:String,actionStyles:UIAlertAction.Style,actionTitle:String) -> Void{
        let alertController = UIAlertController(title: title, message: message, preferredStyle: alertStyle)
        
        let action = UIAlertAction(title: actionTitle, style: .default, handler: .none)
        alertController.addAction(action)
        self.present(alertController, animated: true)
    }
    
    
    public func openAlert(title: String,
                          message: String,
                          alertStyle:UIAlertController.Style,
                          actionTitles:[String],
                          actionStyles:[UIAlertAction.Style],
                          actions: [((UIAlertAction) -> Void)]){
        
        let alertController = UIAlertController(title: title, message: message, preferredStyle: alertStyle)
        for(index, indexTitle) in actionTitles.enumerated(){
            let action = UIAlertAction(title: indexTitle, style: actionStyles[index], handler: actions[index])
            alertController.addAction(action)
        }
        self.present(alertController, animated: true)
    }
}
