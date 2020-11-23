//
//  케이번째수.swift
//  JE
//
//  Created by 이재은 on 2020/11/20.
// https://programmers.co.kr/learn/courses/30/lessons/42748

import Protocol

class 케이번째수: Exam {
    static func examStart() {
        print(케이번째수().solution([1, 5, 2, 6, 3, 7, 4], [[2, 5, 3], [4, 4, 1], [1, 7, 3]]))
    }

    func solution(_ array: [Int], _ commands: [[Int]]) -> [Int] {
        var result = [Int]()
        for i in 0..<commands.count {
            let start = commands[i][0] - 1
            let end = commands[i][1] - 1
            let part = array[start...end].sorted()
            result.append(part[commands[i][2] - 1])
        }
        return result
    }
}

// [5, 6, 3]
