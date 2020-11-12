//
//  배열합치기.swift
//  SP
//
//  Created by JSP_MacBookPro on 2020/11/04.
//

//let aa = readLine()
//let bb = readLine()
//let cc = readLine()

import Foundation
import Protocol

class 배열합치기: Exam {
    static func examStart() {
        let r = 배열합치기().solution(aArrayCount: 2, bArrayCount: 2, aArr: [4,7], bArr: [1])
    }
    
    func solution(aArrayCount: Int, bArrayCount: Int, aArr: [Int], bArr: [Int]) -> [Int] {
        let r = (aArr + bArr)
        return r.sorted(by: <)
    }
}
