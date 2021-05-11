//
//  SignupDataModel.swift
//  assignment1-cloneCoding-Kakao
//
//  Created by kimhyungyu on 2021/05/11.
//

import Foundation

// MARK: - Welcome

struct SignupDataModel: Codable {
    let email, password, sex, nickname, phone, birth: String
}
