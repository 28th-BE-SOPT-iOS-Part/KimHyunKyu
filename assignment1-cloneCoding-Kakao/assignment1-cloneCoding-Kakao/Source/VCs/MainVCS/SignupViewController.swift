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
        print("click signupBtn")
    }
}
