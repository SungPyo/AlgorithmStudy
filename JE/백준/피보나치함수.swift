//
//  피보나치함수.swift
//  JE
//
//  Created by 이재은 on 2020/11/12.
//
// https://www.acmicpc.net/problem/1003

import Protocol

class 피보나치함수: Exam {
    static func examStart() {
        피보나치함수().solution()
    }
    
    func solution() {
        let T = 3//Int(readLine()!)!
        var nCount = [Int](repeating: 0, count: 40)
        nCount.insert(contentsOf: [1, 0], at: 0)
        
        @discardableResult
        func fibo(_ n: Int) -> Int {
            if n < 2 {
                return nCount[n]
            }
            if nCount[n] == 0 {
                nCount[n] = fibo(n - 1) + fibo(n - 2)
            }
            return nCount[n]
        }
        
        for index in 0..<T {
            let temp = [0, 1, 3]
            //            let i = Int(readLine()!)!
            let i = temp[index]
            fibo(i + 1)
            print("\(nCount[i]) \(nCount[i + 1])")
        }
    }
}

//3
//0
//1
//3
//답
//1 0
//0 1
//1 2
