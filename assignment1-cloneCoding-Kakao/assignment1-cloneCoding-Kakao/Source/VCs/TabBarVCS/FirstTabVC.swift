//
//  FirstTabVC.swift
//  assignment1-cloneCoding-Kakao
//
//  Created by kimhyungyu on 2021/04/17.
//

import UIKit

class FirstTabVC: UIViewController {
    
    //MARK: - View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()        
    }
    
    //MARK: - @IBAction Properties

    @IBAction func touchProfilImageView(_ sender: Any) {
        let myTabVC = UIStoryboard.init(name: "MyTab", bundle: nil)
        guard let nextVC = myTabVC.instantiateViewController(identifier: "MyTabVC") as? MyTabVC else {
            return
        }
        nextVC.modalPresentationStyle = .fullScreen
        nextVC.modalTransitionStyle = .coverVertical
        self.present(nextVC, animated: true, completion: nil)
    }
}

