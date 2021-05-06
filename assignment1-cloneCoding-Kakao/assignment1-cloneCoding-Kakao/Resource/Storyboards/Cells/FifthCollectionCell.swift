//
//  FifthTabMenuDataModel.swift
//  assignment1-cloneCoding-Kakao
//
//  Created by kimhyungyu on 2021/05/06.
//

import Foundation
import UIKit

class FifthCollectionCell: UICollectionViewCell {
    
    
    @IBOutlet weak var menuLabel: UILabel!
    @IBOutlet weak var menuImage: UIImageView!
    
    static let identifier = "FifthCollectionCell"
    
    func setData(image: UIImage, title: String) {
        menuLabel.text = title
        menuImage.image = image
    }
}
