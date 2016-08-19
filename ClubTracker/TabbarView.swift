//
//  TabbarView.swift
//  ClubTracker
//
//  Created by Developer8 on 8/19/16.
//  Copyright © 2016 CreatuDevelopers. All rights reserved.
//

import UIKit

class TabbarView: UIView {

    //MARK: --Outlets
    
    
    //MARK: --Declarations
    var view:UIView!
    
    //MARK: --View Setup
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        setup()
    }
    
    func loadViewFromNib() -> UIView {
        let bundle = NSBundle(forClass:self.dynamicType)
        let nib = UINib(nibName: "TabbarView", bundle: bundle)
        let view = nib.instantiateWithOwner(self, options: nil)[0] as! UIView
        return view
    }
    
    func setup() {
        view = loadViewFromNib()
        view.frame = bounds
        view.autoresizingMask = [.FlexibleWidth, .FlexibleHeight]
        addSubview(view)
        
    }
    
    //MARK: --Button Actions
    
    //MARK: --Custom Functions
}
