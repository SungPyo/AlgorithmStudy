//
//  ExemList.swift
//  Protocol
//
//  Created by JSP_MacBookPro on 2020/11/01.
//

import Foundation

enum ExemList: String, CaseIterable {
    case 테스트입니다_클릭해도_뭐_없어요
    case 서울에서김서방찾기
    case 모의고사
    case 배열합치기
    case 피보나치_함수
    case 타일채우기
    
    func start(bundleID: String) {
        let bundle = Bundle(identifier: "com.castielticket.\(bundleID)")
        guard let vc = bundle?.classNamed("\(bundleID).\(self)") as? Exam.Type else {
            return print("\(bundleID)번들에 \(self).swift 파일이 없습니다.")
        }
        vc.exemStart()
    }
}
