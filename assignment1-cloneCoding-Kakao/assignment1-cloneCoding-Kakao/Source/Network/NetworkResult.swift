//
//  NetworkResult.swift
//  assignment1-cloneCoding-Kakao
//
//  Created by kimhyungyu on 2021/05/11.
//

import Foundation

enum NetworkResult<T> {
    case success(T)
    case requestErr(T)
    case pathErr
    case serverErr
    case networkFail
}
