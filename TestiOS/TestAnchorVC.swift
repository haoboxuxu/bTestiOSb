//
//  VC3.swift
//  TestiOS
//
//  Created by haoboxx on 2023/3/30.
//

import UIKit
import SnapKit

class TestAnchorVC: UIViewController {
    
    let view2: UIView = {
       let v = UIView()
        v.backgroundColor = .red;
        return v
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        view.backgroundColor = .white
        
        view.addSubview(view2)
        view2.frame = CGRect(x: 100, y: 100, width: 50, height: 50)
        
        let view3 = UIView()
        view3.backgroundColor = .orange
        view2.addSubview(view3)
        
        view3.snp.makeConstraints { make in
//            make.left.right.inset(8)
//            make.bottom.offset(0)
        }
    }
}
