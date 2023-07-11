//
//  ViewController.swift
//  Validations
//
//  Created by Mac on 11/07/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}


//extension BuyerVerificationViewController {
//    func fetchData() {
//
//        if let otpVerifiacationNo = txtOtp.text {
//            if otpVerifiacationNo == "" {
//                openAlertBox(title: "Alert", message: "Enter Otp number", alertStyle: .alert, actionTitles: "Ok", actionStyles: .default, actionTitle: "Ok")
//            } else {
//                if !otpVerifiacationNo.validateOtp() {
//                    openAlertBox(title: "Alert", message: "Enter Valid otp number", alertStyle: .alert, actionTitles: "Ok", actionStyles: .default, actionTitle: "Ok")
//                } else {
//                    guard let url = URL(string: Constant.baseUrl + ConstantBuyer.buyerOtpVerification) else {return}
//
//                    guard let notemp else {return}
//                    let paraMeters:[String:Any] = [
//                        "mobile": notemp,
//                        "otp": otpVerifiacationNo
//                    ]
//                    AF.request(url,method: .post,parameters: paraMeters,encoding: JSONEncoding.default).validate()
//                        .response {
//                            response in
//                            switch response.result {
//                            case .success(let data):
//                                guard let data else {return}
//                                do {
//                                    let apiData = try JSONDecoder().decode(BuyerVerification.self, from: data)
//                                    self.buyerDataStore = apiData.result
//                                } catch {
//                                    print(error.localizedDescription)
//                                }
//                            case.failure(let error):
//                                print(error.localizedDescription)
//                            }
//                            if response.response?.statusCode == 200 {
//                                if self.txtOtp.text == self.buyerDataStore.otp {
//                                    print("Success")
//                                    guard let tabVC = self.storyboard?.instantiateViewController(withIdentifier: "TabBarItems") as? TabBarItems else {return}
//                                    self.navigationController?.pushViewController(tabVC, animated: true)
//                                    UserDefaults.standard.set(self.buyerDataStore.otp, forKey: "buyerOtpVerification")
//
//                                } else {
//                                    let alert = UIAlertController(title: "Alert", message: "Otp Is Wrong", preferredStyle: UIAlertController.Style.alert)
//                                    alert.addAction(UIAlertAction(title: "Click", style: UIAlertAction.Style.default, handler: nil))
//                                    self.present(alert, animated: true, completion: nil)                    }
//                            }
//                }
//
//                }
//        }
//        }
//    }
//    }
//
