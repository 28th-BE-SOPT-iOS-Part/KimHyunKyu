//
//  FriendDataModel.swift
//  assignment1-cloneCoding-Kakao
//
//  Created by kimhyungyu on 2021/05/05.
//

import Foundation
import UIKit

struct FriendDataModel
{
    var image : UIImage
    var name : String
    var state: String
    
    init(imageName : String,
         name : String,
         state: String)
    {
        if let image = UIImage(named: imageName)
        {
            self.image = image
        }
        else
        {
            self.image = UIImage()
        }
        self.name = name
        self.state = state
    }
}
