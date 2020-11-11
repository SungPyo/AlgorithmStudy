//
//  타일채우기.swift
//  SP
//
//  Created by JSP_MacBookPro on 2020/11/11.
//

import Protocol

class 타일채우기: Exam {
    static func exemStart() {
        print(타일채우기().solution(["Jane", "Kim"]))
    }
    
    func solution(_ seoul:[String]) -> String {
        return "김서방은 \(seoul.firstIndex(of: "Kim")!)에 있다"
    }
}
