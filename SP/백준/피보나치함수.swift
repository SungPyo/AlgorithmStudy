//
//  피보나치_함수.swift
//  SP
//
//  Created by JSP_MacBookPro on 2020/11/11.
//

import Protocol

class 피보나치함수: Exam {
    static func exemStart() {
        print(피보나치함수().solution(["Jane", "Kim"]))
    }
    
    func solution(_ seoul:[String]) -> String {
        return "김서방은 \(seoul.firstIndex(of: "Kim")!)에 있다"
    }
}
