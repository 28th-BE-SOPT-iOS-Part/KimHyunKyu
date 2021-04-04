//
//  CompleteViewController.swift
//  assignment1-cloneCoding-Kakao
//
//  Created by kimhyungyu on 2021/04/04.
//

import UIKit

class CompleteViewController: UIViewController {
    
    var label: String?
    
//MARK: - IBOutlet
    
    @IBOutlet weak var textLabel: UILabel!
    
//MARK: - override func
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //optional binding
        if let id = label{
            textLabel.text = "\(id)님 가입이 완료되었습니다"
        }
    }
    
    //MARK: - @IBAction
    @IBAction func completeBtnClicked(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}
