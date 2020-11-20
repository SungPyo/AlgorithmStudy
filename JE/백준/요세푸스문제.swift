//
//  요세푸스문제.swift
//  JE
//
//  Created by 이재은 on 2020/11/20.
// https://www.acmicpc.net/problem/1158

import Protocol

class 요세푸스문제: Exam {
    static func examStart() {
        요세푸스문제().solution()
    }

    func solution() {
        let NK = [7, 3]//readLine()!.split(separator: " ").compactMap { Int($0) }
        var circle = [Int](1...NK[0])
        var index = 0

        print("<", terminator: "")
        while !circle.isEmpty {
            if circle.count == 1 {
                print(circle[0], terminator: ">")
                break
            }
            index = (index + NK[1] - 1) % circle.count
            print(circle.remove(at: index), terminator: ", ")
        }
    }
}

//7 3
//답
//<3, 6, 2, 7, 5, 1, 4>
