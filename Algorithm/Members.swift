//
//  Members.swift
//  Algorithm
//
//  Created by JSP_MacBookPro on 2020/11/01.
//

import Foundation

enum Members: String, CaseIterable {
    case SM
    case SS
    case SP
    case JH
    case TW
    case SeongM
    case JE
    case IH
    
    var name: String {
        switch self {
        case .SM: return "선민"
        case .SS: return "상선"
        case .SP: return "성표"
        case .JH: return "지혜"
        case .TW: return "태원"
        case .SeongM: return "성민"
        case .JE: return "재은"
        case .IH: return "인희"
        }
    }
}
