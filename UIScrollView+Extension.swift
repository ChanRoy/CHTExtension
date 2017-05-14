//
//  UIScrollView+Extension.swift
//  CHTQfangHK
//
//  Created by cht on 2017/5/12.
//  Copyright © 2017年 cht. All rights reserved.
//

import Foundation

//解决UIScrollView 与 系统侧滑返回 手势冲突
extension UIScrollView: UIGestureRecognizerDelegate{
    
    public func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWith otherGestureRecognizer: UIGestureRecognizer) -> Bool {
        
        guard gestureRecognizer.isKind(of: UIPanGestureRecognizer.classForCoder()) else {
            
            return false
        }
        
        guard otherGestureRecognizer.isKind(of: UIScreenEdgePanGestureRecognizer.classForCoder()) else {
            
            return false
        }
        
        gestureRecognizer.require(toFail: otherGestureRecognizer)
        
        return false
    }
}
