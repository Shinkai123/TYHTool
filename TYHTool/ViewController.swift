//
//  ViewController.swift
//  TYHTool
//
//  Created by YaoHua Tan on 2019/10/23.
//  Copyright © 2019 YaoHua Tan. All rights reserved.
//

import UIKit
import CTMediator

class ViewController: UIViewController {

    lazy var addBarItem: UIBarButtonItem = { () -> UIBarButtonItem in
        let addItem = CTMediator.sharedInstance()?.tyh_toolCreatTextButton(self, #selector(addBarBtnAction), .white, "add", textFont: 15.0, false)
        return addItem!
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        loadUI()
    }
    
    func loadUI() {
        title = "test"
        navigationItem.rightBarButtonItem = addBarItem
    }
    
    @objc func addBarBtnAction() {
        
    }
    
    

}

