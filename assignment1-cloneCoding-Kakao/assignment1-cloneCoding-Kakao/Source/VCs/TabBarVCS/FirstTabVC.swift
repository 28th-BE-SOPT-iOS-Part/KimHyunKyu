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
        //overFullScreen, overCurrentContext 는 반투명도를 조절해서 뒤의 view 를 볼 수 있다.
        nextVC.modalPresentationStyle = .overFullScreen
        nextVC.modalTransitionStyle = .coverVertical
        nextVC.view.alpha = 1
        self.present(nextVC, animated: true, completion: nil)
    }
}

