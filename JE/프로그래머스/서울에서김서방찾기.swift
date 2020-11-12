//
//  서울에서김서방찾기.swift
//  JE
//
//  Created by 이재은 on 2020/11/12.
//
// https://programmers.co.kr/learn/courses/30/lessons/12919

import Protocol

class 서울에서김서방찾기: Exam {
    static func examStart() {
        print(서울에서김서방찾기().solution(["Jane", "Kim"]))
    }
    
    func solution(_ seoul: [String]) -> String {
        return "김서방은 \(seoul.firstIndex(of: "Kim")!)에 있다"
    }
}
