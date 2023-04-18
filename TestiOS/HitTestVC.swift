//
//  HtiTestVC.swift
//  TestiOS
//
//  Created by haoboxx on 2023/4/3.
//

import UIKit
import SnapKit

class OrangeView: UIView {
//    override func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {
//        return nil
//    }
}

class HitTestVC: UIViewController {
    
    let ov: OrangeView = {
        let v = OrangeView()
        v.backgroundColor = .orange
        return v
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .gray
        let tap1 = UITapGestureRecognizer(target: self, action: #selector(didTapSelf))
        self.view.addGestureRecognizer(tap1)
        
        self.view.addSubview(ov)
        ov.snp.makeConstraints { make in
            make.center.equalTo(self.view.snp.center)
            make.width.height.equalTo(200)
        }
        
        let tap2 = UITapGestureRecognizer(target: self, action: #selector(didTapOrange))
        self.ov.addGestureRecognizer(tap2)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.ov.isHidden = true
        }
    }
    
    @objc func didTapSelf() {
        print("didTapSelf")
    }
    
    @objc func didTapOrange() {
        print("didTapOrange")
    }
}
