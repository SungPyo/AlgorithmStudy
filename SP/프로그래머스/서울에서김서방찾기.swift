//
//  서울에서김서방찾기.swift
//  SP
//
//  Created by JSP_MacBookPro on 2020/11/01.
//

import Protocol

class 서울에서김서방찾기: Exam {
    static func exemStart() {
        print(서울에서김서방찾기().solution(["Jane", "Kim"]))
    }
    
    func solution(_ seoul:[String]) -> String {
        return "김서방은 \(seoul.firstIndex(of: "Kim")!)에 있다"
    }
}
