//
//  ViewController.swift
//  TestiOS
//
//  Created by haoboxx on 2023/3/20.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    let redView: UIView = {
        let v = UIView()
        v.backgroundColor = .red
        return v
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
//        self.view.addSubview(redView)
        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
         super.viewDidAppear(animated)
        self.present(VC2(), animated: false) {
            print(111)
        }
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
//        redView.snp.makeConstraints { make in
//            make.left.equalTo(self.view.snp.left).offset(10)
//            make.right.equalTo(self.view.snp.right).offset(-10)
//            make.top.equalTo(self.view.snp.top).offset(10)
//            make.bottom.equalTo(self.view.snp.bottom).offset(-10)
//        }
    }
}

