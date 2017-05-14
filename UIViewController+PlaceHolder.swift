//
//  UIViewController+PlaceHolder.swift
//  CHTQfangHK
//
//  Created by cht on 2017/5/12.
//  Copyright © 2017年 cht. All rights reserved.
//

import Foundation

extension UIViewController{
    
    private struct AssociatedKeys{
    
        static var phViewKey = "phViewKey"
    }
    
    //add property phView
    var phView: CHTPlaceholderView?{
        
        get{
            
            return (objc_getAssociatedObject(self, &AssociatedKeys.phViewKey) as? CHTPlaceholderView)
        }
        set{
        
            if let newValue = newValue {
                
                objc_setAssociatedObject(self, &AssociatedKeys.phViewKey, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
            }
        }
    }
    
    
    private func setupPhViewInView(view: UIView){
        
        phView = CHTPlaceholderView.init(frame: view.bounds)
        phView?.offsetY = 50.0
        phView?.setPhTitle("加載出錯", phSubTitle: "点击重新加载", phImage: R.image.iconDataError(), placeholderViewType: CHTPlaceholderViewType(rawValue: 0))
        phView?.setPhTitle("暫無數據", phSubTitle: nil, phImage: R.image.iconNoData(), placeholderViewType: CHTPlaceholderViewType(rawValue: 1))
        phView?.setPhTitle("加載出錯", phSubTitle: "點擊重新加載", phImage: R.image.iconDataError(), placeholderViewType: CHTPlaceholderViewType(rawValue: 2))
    }
    
    func showPhViewInView(view: UIView, type: CHTPlaceholderViewType){
        
        hidePhView()
        
        setupPhViewInView(view: view)
        
        phView?.show(with: type)
        
        view.addSubview(phView!)
    }
    
    func hidePhView(){
            
        phView?.removeFromSuperview()
        phView = nil

    }
    
    func addEvent(target: Any?, action: Selector?){
        
        phView?.isUserInteractionEnabled = true
        let tap = UITapGestureRecognizer.init(target: target, action: action)
        phView?.addGestureRecognizer(tap)
        
    }
    
}
