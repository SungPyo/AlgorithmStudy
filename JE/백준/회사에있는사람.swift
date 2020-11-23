//
//  회사에있는사람.swift
//  JE
//
//  Created by 이재은 on 2020/11/20.
// https://www.acmicpc.net/problem/7785

import Protocol

class 회사에있는사람: Exam {
    static func examStart() {
        회사에있는사람().solution(["Baha enter", "Askar enter", "Baha leave", "Artem enter"])
    }

    func solution(_ people: [String]) {
        let n = people.count//Int(readLine()!)!
        var names = Set<String>()

        for i in 0..<n {
            let input = people[i].split(separator: " ").map { String($0) }//readLine()!.split(separator: " ").map { String($0) }
            if names.contains(input[0]) {
                names.remove(input[0])
            } else {
                names.insert(input[0])
            }
        }
        names.sorted(by: >).forEach {
            print($0)
        }
    }
}

//4
//Baha enter
//Askar enter
//Baha leave
//Artem enter
//답
//Askar
//Artem
