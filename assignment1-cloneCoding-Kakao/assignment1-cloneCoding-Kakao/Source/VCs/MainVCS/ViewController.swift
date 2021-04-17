//
//  ViewController.swift
//  assignment1-cloneCoding-Kakao
//
//  Created by kimhyungyu on 2021/04/04.
//

import UIKit

class ViewController: UIViewController {
    
//MARK: - @IBOutlet Properties
    
    
    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var pwdTextField: UITextField!
    
//MARK: - View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
//MARK: - @IBAction Properties
    
    @IBAction func signupBtnClicked(_ sender: Any) {
        guard let nextVC = self.storyboard?.instantiateViewController(identifier: "SignupViewController") as? SignupViewController else {
            return
        }
        self.navigationController?.pushViewController(nextVC, animated: true)
    }
    
    @IBAction func loginBtnClicked(_ sender: Any) {
        if idTextField.text?.isEmpty == false && pwdTextField.text?.isEmpty == false {
            guard let nextVC = self.storyboard?.instantiateViewController(identifier: "TabBar") as? UITabBarController else {
                return
            }
            self.navigationController?.pushViewController(nextVC, animated: true)
        }
    }
}

