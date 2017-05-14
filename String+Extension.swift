//
//  String+Extension.swift
//  CHTQfangHK
//
//  Created by cht on 2017/5/9.
//  Copyright © 2017年 cht. All rights reserved.
//

import Foundation

extension String{
    
    //清除字符串小数点末尾的0
    func cleanDecimalPointZero() -> String{
        
        let newStr = self as NSString
        var s = NSString()
        
        var offset = newStr.length - 1
        while offset > 0 {
            
            s = newStr.substring(with: NSMakeRange(offset, 1)) as NSString
            if s.isEqual(to: "0"){
                offset -= 1
            }else{
                break
            }
        }
        if newStr.substring(with: NSMakeRange(offset, 1)) == "." {
            
            offset = offset - 1
        }
        return newStr.substring(to: offset + 1)
    }
    
    //数字每三位一个逗号
    static func numberFormatterDecimalStyle(number: Int) -> String{
        
        let numFormatter = NumberFormatter.init()
        numFormatter.numberStyle = .decimal
        return numFormatter.string(from: NSNumber.init(value: number))!
    }
    
    static func dateStrWithTimeStamp(timeStamp: Double, type: Int) -> String{
        
        let date = Date.init(timeIntervalSince1970: timeStamp)
        return date.dateStringForType(type: type)
    }
    
    /*************************** 图片尺寸 ****************************/
    static func pictureStrWithSize(picStr: String, size: String) -> String{
        
        return picStr.replacingOccurrences(of: "{size}", with: size)
    }
    
    static func pictureStrWithSize_100_135(picStr: String) -> String{
        
        return String.pictureStrWithSize(picStr: picStr, size: "100x135")
    }
    
    static func pictureStrWithSize_180_135(picStr: String) -> String{
        
        return String.pictureStrWithSize(picStr: picStr, size: "180x135")
    }
    
    static func pictureStrWithSize_386_289(picStr: String) -> String{
        
        return String.pictureStrWithSize(picStr: picStr, size: "386x289")
    }
    
    static func pictureStrWithSize_600_450(picStr: String) -> String{
        
        return String.pictureStrWithSize(picStr: picStr, size: "600x450")
    }
    
    static func pictureStrWithSize_800_600(picStr: String) -> String{
        
        return String.pictureStrWithSize(picStr: picStr, size: "800x600")
    }
}
