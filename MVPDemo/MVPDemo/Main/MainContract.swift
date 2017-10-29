//
//  MainContract.swift
//  MVPDemo
//
//  Created by Hongyi Zheng on 2017/10/29.
//  Copyright © 2017年 Hongyi Zheng. All rights reserved.
//

import Foundation

protocol MainViewProtocol: NSObjectProtocol { // 声明更新view的接口
    
    func updateShow(greeting: String);
}

protocol MainPresenterProtocol { //  声明presenter需要对外的接口
    
    func configGreetings();
}
