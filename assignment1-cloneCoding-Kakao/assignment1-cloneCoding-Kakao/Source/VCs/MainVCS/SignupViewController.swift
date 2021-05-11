//
//  SignupViewController.swift
//  assignment1-cloneCoding-Kakao
//
//  Created by kimhyungyu on 2021/04/04.
//

import UIKit

class SignupViewController: UIViewController {

//MARK: - @IBOutlet
    
    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var pwdTextField: UITextField!
    @IBOutlet weak var rePwdTextField: UITextField!
    
//MARK: - override func
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
//MARK: - @IBAction
    
    @IBAction func signupBtnClicked(_ sender: Any) {
        SignupService.shared.Signup(email: idTextField.text!, password: pwdTextField.text!) { result in
            switch result {
            case .success(let message):
                if let message = message as? String {
                    self.makeAlert(title: "알림", message: message, okAction: { _ in
                        guard let nextVC = self.storyboard?.instantiateViewController(identifier: "TabBar") as? UITabBarController else {
                            return
                        }
                        self.navigationController?.pushViewController(nextVC, animated: true)
                    })
                }
            case .requestErr(let message):
                self.makeAlert(title: "알림", message: message as! String)
            default :
                print("error")
            }
        }
    }
}
