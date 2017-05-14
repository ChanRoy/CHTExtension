//
//  Date+Extension.swift
//  CHTQfangHK
//
//  Created by cht on 2017/5/11.
//  Copyright © 2017年 cht. All rights reserved.
//

import Foundation

extension Date{
    
    func dateStringForType(type: Int) -> String{
        
        let dateFormatter = DateFormatter()
        
        switch type {
        case 1: dateFormatter.dateFormat = "yyyy"
        case 2: dateFormatter.dateFormat = "yyyy年MM月"
        case 3: dateFormatter.dateFormat = "yyyy-MM-dd"
        case 4: dateFormatter.dateFormat = "hh"
        case 5: dateFormatter.dateFormat = "mm"
        case 6: dateFormatter.dateFormat = "ss"
        case 7: dateFormatter.dateFormat = "a"
        case 8: dateFormatter.dateFormat = "MM"
        case 9: dateFormatter.dateFormat = "dd"
        case 10: dateFormatter.dateFormat = "yyyy-MM-dd HH:mm"
        case 11: dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        case 12: dateFormatter.dateFormat = "HH:mm"
        case 13: dateFormatter.dateFormat = "yyyyMMddHHmm"
        case 14: dateFormatter.dateFormat = "MM-dd"
        case 15: dateFormatter.dateFormat = "yyyy年MM月dd日 HH:mm"
        case 16: dateFormatter.dateFormat = "yyyyMMdd"
        case 17: dateFormatter.dateFormat = "yyyyMMddHHmmss"
        case 18: dateFormatter.dateFormat = "MM-dd HH:mm"
        case 19: dateFormatter.dateFormat = "yyyy-MM-dd HH"
        case 20: dateFormatter.dateFormat = "dd/MM/yyyy"
        case 21: dateFormatter.dateFormat = "yyyyMMddHHmmssSS"
        case 22: dateFormatter.dateFormat = "dd/MM/yyyy HH:mm:ss"
        case 23: dateFormatter.dateFormat = "MM/yy"
        default: break
        }
        
        let dateStr = dateFormatter.string(from: self)
        return dateStr
    }
    
    static func dateFromString(str: String, type: Int) -> Date{
        
        let dateFormatter = DateFormatter()
        
        switch type {
        case 1: dateFormatter.dateFormat = "yyyy"
        case 2: dateFormatter.dateFormat = "yyyy年MM月"
        case 3: dateFormatter.dateFormat = "yyyy-MM-dd"
        case 4: dateFormatter.dateFormat = "hh"
        case 5: dateFormatter.dateFormat = "mm"
        case 6: dateFormatter.dateFormat = "ss"
        case 7: dateFormatter.dateFormat = "a"
        case 8: dateFormatter.dateFormat = "MM"
        case 9: dateFormatter.dateFormat = "dd"
        case 10: dateFormatter.dateFormat = "yyyy-MM-dd HH:mm"
        case 11: dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        case 12: dateFormatter.dateFormat = "HH:mm"
        case 13: dateFormatter.dateFormat = "yyyyMMddHHmm"
        case 14: dateFormatter.dateFormat = "MM-dd"
        case 15: dateFormatter.dateFormat = "yyyy年MM月dd日 HH:mm"
        case 16: dateFormatter.dateFormat = "yyyyMMdd"
        case 17: dateFormatter.dateFormat = "yyyyMMddHHmmss"
        case 18: dateFormatter.dateFormat = "MM-dd HH:mm"
        case 19: dateFormatter.dateFormat = "yyyy-MM-dd HH"
        case 20: dateFormatter.dateFormat = "dd/MM/yyyy"
        case 21: dateFormatter.dateFormat = "yyyyMMddHHmmssSS"
        case 22: dateFormatter.dateFormat = "dd/MM/yyyy HH:mm:ss"
        case 23: dateFormatter.dateFormat = "MM/yy"
        default: break
        }
        
        let date = dateFormatter.date(from: str)
        return date!
    }
    
}

