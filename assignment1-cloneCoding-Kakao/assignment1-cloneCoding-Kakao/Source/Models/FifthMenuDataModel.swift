//
//  FifthMenuDataModel.swift
//  assignment1-cloneCoding-Kakao
//
//  Created by kimhyungyu on 2021/05/06.
//

import Foundation
import UIKit

struct FifthMenuDataModel {
    var title: String
    var image: UIImage
    
    init(menuImage: String,
         menuTitle: String)
    {
        if let image = UIImage(systemName: menuImage) {
            self.image = image
        } else {
            self.image = UIImage()
        }
        self.title = menuTitle
    }
}
