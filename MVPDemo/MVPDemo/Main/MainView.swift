//
//  MainView.swift
//  MVPDemo
//
//  Created by Hongyi Zheng on 2017/10/29.
//  Copyright © 2017年 Hongyi Zheng. All rights reserved.
//

import Foundation
import UIKit

class MainView: UIView {
    
    @IBOutlet weak var showLabel: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
