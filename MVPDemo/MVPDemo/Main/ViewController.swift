//
//  ViewController.swift
//  MVPDemo
//
//  Created by Hongyi Zheng on 2017/10/29.
//  Copyright © 2017年 Hongyi Zheng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    weak var mainView: MainView? {
        get {
            return self.view as? MainView
        }
    }
    
    var mainPresenter: MainPresenter = MainPresenter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.mainPresenter.bindView(tmp: self)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func tapAction(_ sender: Any) {
        self.mainPresenter.configGreetings()
    }
}

extension ViewController: MainViewProtocol {
    
    func updateShow(greeting: String) {
        mainView?.showLabel.text = greeting
    }
}

