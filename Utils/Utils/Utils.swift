//
//  Utils.swift
//  Utils
//
//  Created by JSP_MacBookPro on 2020/10/31.
//

import UIKit

//만들어 써야하는것들 여기에 죄다.....

extension String {
    // 특정 문자에서 특정 문자까지 문자열 자르기
    
    // 특정 index에서 특정 index까지 문자열 자르기
    
    // 특정 index에서 처음 발견되는 특정 문자까지 문자열 자르기
    func foundStringWithIndexAndCharacter(index: Int, str: Character, include: Bool) -> String? {
        if include { //특정문자 포함
            guard self.count > index else { return nil }
            let sIndex = self.index(self.startIndex, offsetBy: index)
            guard let eIndex = self.firstIndex(of: str) else { return nil }
            let range = sIndex...eIndex
            return String(self[range])
        } else { //특정 문자 미포함
            guard self.count > index + 1 else { return nil }
            let sIndex = self.index(self.startIndex, offsetBy: index + 1)
            guard let eIndex = self.firstIndex(of: str) else { return nil }
            let range = sIndex..<eIndex
            return String(self[range])
        }
    }
    // 특정 index에서 마지막으로 발견되는 특정 문자까지 문자열 자르기
    
    // 특정 index에서 n번쨰로 발견되는 특정 문자까지 문자열 자르기
    
    // 특정 index에서 특정 문자열까지 문자열 자르기
    
    // 문자열에 특정 문자가 몇개 있는지 확인하기
    
    // 문자열에 특정 문자열이 몇쌍 있는지 확인하기
    
    // 특정 문자를 특정 문자로 바꾸기
    
    // 특정 문자를 특정 문자로 모두 바꾸기
    
    // 특정 문자의 index번호 찾기
    
    // 특정 문자열의 indexRange 찾기
    
    // 특정 index의 문자 찾기
    func foundCharacterWithIndex(index: Int) -> Character {
        let f = self.index(self.startIndex, offsetBy: index)
        return self[f]
    }
    // 특정 indexRange의 문자열 찾기
}
