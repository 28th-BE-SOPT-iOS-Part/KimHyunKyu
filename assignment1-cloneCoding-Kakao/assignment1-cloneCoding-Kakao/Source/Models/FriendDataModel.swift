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
    var image : String
    var name : String
    var state: String
    
    init(imageName : String,
         name : String,
         state: String)
    {
        self.image = imageName
        self.name = name
        self.state = state
    }
}
