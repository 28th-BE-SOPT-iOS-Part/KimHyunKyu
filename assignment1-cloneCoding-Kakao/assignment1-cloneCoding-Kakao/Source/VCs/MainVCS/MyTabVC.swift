//
//  MyTabVC.swift
//  assignment1-cloneCoding-Kakao
//
//  Created by kimhyungyu on 2021/04/17.
//

import UIKit

class MyTabVC: UIViewController {

    //MARK: - Properties
    
    var viewTranslation = CGPoint(x: 0, y: 0)
    var profileImage: String = ""
    var name: String = ""
    
    //MARK: - @IBOulet Properties
    
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //Add gestureRecognizer
        
        view.addGestureRecognizer(UIPanGestureRecognizer(target: self, action: #selector(handleDismiss)))
        
        setUI()
    }
    
    //MARK: - @IBAtion Properties
    
    @IBAction func touchCloseBtn(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    //MARK: - Methods
    
    private func setUI() {
        profileImageView.image = UIImage(named: profileImage)
        nameLabel.text = name
    }
    
    @objc func handleDismiss(sender: UIPanGestureRecognizer) {
        switch sender.state {
        case .changed:
            viewTranslation = sender.translation(in: view)
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.7, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
                self.view.transform = CGAffineTransform(translationX: 0, y: self.viewTranslation.y)
            })
        case .ended:
            if viewTranslation.y < 250 {
                UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.7, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
                    self.view.transform = .identity
                })
            } else {
                dismiss(animated: true, completion: nil)
            }
        default:
            break
        }
    }
}
