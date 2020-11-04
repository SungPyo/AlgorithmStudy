//
//  모의고사.swift
//  SP
//
//  Created by JSP_MacBookPro on 2020/11/04.
//

import Foundation
import Protocol

class 모의고사: Exem {
    static func exemStart() {
        print(모의고사().solution([1,2,3,4,5]))
        print(모의고사().solution([1,3,2,4,2]))
        print(모의고사().solution([4,4,5,2,1]))
    }
    
    func solution(_ answers:[Int]) -> [Int] {
        let rule1 = [1,2,3,4,5]
        let rule2 = [2,1,2,3,2,4,2,5]
        let rule3 = [3,3,1,1,2,2,4,4,5,5]
        
        var person1: [Int: Int] = [1: 0]
        var person2: [Int: Int] = [2: 0]
        var person3: [Int: Int] = [3: 0]
        
        answers.enumerated().forEach {
            if rule1[$0.offset%rule1.count] == $0.element {
                person1[1]! += 1
            }
            
            if rule2[$0.offset%rule2.count] == $0.element {
                person2[2]! += 1
            }
            
            if rule3[$0.offset%rule3.count] == $0.element {
                person3[3]! += 1
            }
        }
        
        let maxPoint = max(person1[1]!, person2[2]!, person3[3]!)
        var result: [Int] = []
        
        [person1, person2, person3].forEach{
            $0.forEach {
                if maxPoint == 0 {return}
                if $0.value == maxPoint {
                    result.append($0.key)
                }
            }
        }
        return result.sorted(by: <)
    }
}
