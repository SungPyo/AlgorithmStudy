//
//  모의고사.swift
//  JE
//
//  Created by 이재은 on 2020/11/12.
//
// https://programmers.co.kr/learn/courses/30/lessons/42840

import Protocol

class 모의고사: Exam {
    static func examStart() {
        print(모의고사().solution([1,2,3,4,5]))
        print(모의고사().solution([1,3,2,4,2]))
        print(모의고사().solution([4,4,5,2,1]))
    }
    
    func correct(_ i: Int, _ rule: [Int], _ answers: [Int]) -> Int {
        let index = i % rule.count
        if answers[i] == rule[index] {
            return 1
        }
        return 0
    }
    
    func solution(_ answers: [Int]) -> [Int] {
        var result = [Int]()
        let first = [1, 2, 3, 4, 5]
        let second = [2, 1, 2, 3, 2, 4, 2, 5]
        let third = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
        var correctCount = [0, 0, 0]
        
        for i in 0..<answers.count {
            correctCount[0] += correct(i, first, answers)
            correctCount[1] += correct(i, second, answers)
            correctCount[2] += correct(i, third, answers)
        }
        
        let maxCorrect = correctCount.max()!
        
        for (index, value) in correctCount.enumerated() {
            if maxCorrect == value {
                result.append(index + 1)
            }
        }
        return result
    }
}
