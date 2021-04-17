//
//  MyTabVC.swift
//  assignment1-cloneCoding-Kakao
//
//  Created by kimhyungyu on 2021/04/17.
//

import UIKit

class MyTabVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    //MARK: - @IBAtion Properties
    
    @IBAction func touchCloseBtn(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
