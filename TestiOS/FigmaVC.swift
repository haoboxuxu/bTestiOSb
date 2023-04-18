//
//  FigmaVC.swift
//  TestiOS
//
//  Created by haoboxx on 2023/3/31.
//

import UIKit

class FigmaVC: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .gray
        
        let createView = createView()
        self.view.addSubview(createView)
        createView.center = self.view.center
    }
    
    func createView() -> UIView {
        // 连载中，每周 21:30 更新
        var view = UILabel()
        view.frame = CGRect(x: 0, y: 0, width: 225, height: 21)
        view.backgroundColor = .red

        view.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        view.font = UIFont(name: "PingFangSC-Medium", size: 15)
        var paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 1
        // Line height: 21 pt
        // (identical to box height)
        view.attributedText = NSMutableAttributedString(string: "该视频为「然然嘉心糖」专属视频", attributes: [NSAttributedString.Key.paragraphStyle: paragraphStyle])
        
        return view
    }
}
