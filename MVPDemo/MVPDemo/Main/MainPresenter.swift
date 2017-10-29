//
//  MainPresenter.swift
//  MVPDemo
//
//  Created by Hongyi Zheng on 2017/10/29.
//  Copyright © 2017年 Hongyi Zheng. All rights reserved.
//

import Foundation

class MainPresenter: MainPresenterProtocol {
    
    weak private var mainView: MainViewProtocol?
    var greetingIndex: UInt = 0
    
    func bindView(tmp: MainViewProtocol?) {
        self.mainView = tmp;
    }
    
    func configGreetings() {
        greetingIndex += 1
        let tmpGreeting = "tapped" + "\(greetingIndex)"
        self.mainView?.updateShow(greeting: tmpGreeting)
    }
}
