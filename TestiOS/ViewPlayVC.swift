//
//  VC2.swift
//  TestiOS
//
//  Created by haoboxx on 2023/3/20.
//

import UIKit
import SnapKit
import MediaPlayer
import AVKit

let vurl = "https://bjtuhaobo.oss-cn-hangzhou.aliyuncs.com/%E5%AE%A2%E8%BF%90%E7%AB%99%E5%9C%BA%E6%99%AF%E8%A7%86%E9%A2%91%E7%89%87%E6%AE%B5-%E8%A3%81%E5%87%8F/%E6%97%85%E5%AE%A2%E9%95%BF%E5%BB%8A/lowdensity3_16_1.mp4"

class ViewPlayVC: UIViewController {
    
    let redView: UIView = {
        let v = UIView()
        v.backgroundColor = .green
        return v
    }()
    
    let uibutton: UIButton = {
        let b = UIButton()
        b.backgroundColor = .red
        return b
    }()
    
    override func viewDidLoad() {
#if DEBUG
        print("wocaonioma")
#endif
        
        
        
        let item: NSObject? = nil
        let videoInfo: NSObject? = nil
        
        if (item == nil) || (videoInfo == nil) {
            print("fhwjh")
        }
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.view.addSubview(redView)
        
        self.view.backgroundColor = .gray
        
        self.view.addSubview(uibutton)
        uibutton.snp.makeConstraints { make in
            make.height.equalTo(30)
            make.width.equalTo(60)
            make.centerX.equalTo(self.view.snp.centerX)
            make.centerY.equalTo(self.view.snp.centerY)
        }
        uibutton.addTarget(self, action: #selector(didTap), for: .touchUpInside)
    }
    
    @objc func didTap() {
//        let i  = 0
//        assert(i != 0, "wfj;e");
//
//        let songInfo = [
//            MPMediaItemPropertyTitle: "Title",
//            MPMediaItemPropertyAlbumTitle: "Subtitle"
//        ]
//
//        MPNowPlayingInfoCenter.default().nowPlayingInfo = songInfo
        
        let url = URL(string: vurl)!
        let player = AVPlayer(url: url)
        let vc = AVPlayerViewController()
        vc.player = player
        vc.updatesNowPlayingInfoCenter = false
        vc.becomeFirstResponder()
        
        UIApplication.shared.beginReceivingRemoteControlEvents()

        present(vc, animated: true) {
            vc.player?.play()
            MPNowPlayingInfoCenter.default().nowPlayingInfo = [
                MPMediaItemPropertyTitle : "Title!",
                MPMediaItemPropertyArtist : "ownerName",
                MPMediaItemPropertyAlbumTitle : "Subtitle!"
            ]
        }
        
        testCom { res in
            print("testCom \(res)")
        }
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        redView.snp.makeConstraints { make in
            make.left.equalTo(self.view.snp.left).offset(10)
            make.right.equalTo(self.view.snp.right).offset(-10)
            make.top.equalTo(self.view.snp.top).offset(10)
            make.bottom.equalTo(self.view.snp.bottom).offset(-10)
        }
    }
    
    func testCom(_ callback: @escaping ((Bool) -> Void)) {
        callback(true)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            callback(false)
        }
    }
}


