//
//  SocketVC.swift
//  TestiOS
//
//  Created by haoboxx on 2023/4/17.
//

import UIKit
import SnapKit

class SocketVC: UIViewController {
    
    let button1: UIButton = {
        let b = UIButton()
        b.backgroundColor = .systemBlue
        return b
    }()
    
    let button2: UIButton = {
        let b = UIButton()
        b.backgroundColor = .systemGreen
        return b
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "SocketVC"
        
        button1.titleLabel?.text = "server"
        button2.titleLabel?.text = "client"
        
        view.addSubview(button1)
        view.addSubview(button2)
        
        button1.snp.makeConstraints { make in
            make.left.right.top.equalTo(self.view)
            make.height.equalTo(self.view.snp.height).multipliedBy(0.5)
        }
        
        button2.snp.makeConstraints { make in
            make.left.right.bottom.equalTo(self.view)
            make.height.equalTo(self.view.snp.height).multipliedBy(0.5)
        }
        
        button1.addTarget(self, action: #selector(btn1click), for: .touchUpInside)
        button2.addTarget(self, action: #selector(btn2click), for: .touchUpInside)
    }
    
    @objc func btn1click() {
        self.navigationController?.pushViewController(SocketServerVC(), animated: true)
    }
    
    @objc func btn2click() {
        self.navigationController?.pushViewController(SocketClientVC(), animated: true)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
