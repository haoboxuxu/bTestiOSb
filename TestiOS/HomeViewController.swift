//
//  ViewController.swift
//  TestiOS
//
//  Created by haoboxx on 2023/3/20.
//

import UIKit
import SnapKit

struct Model {
    let name: String
    let vc: UIViewController
}

let models: [Model] = [
    Model(name: "ViewPlayVC", vc: ViewPlayVC()),
    Model(name: "TestAnchorVC", vc: TestAnchorVC()),
    Model(name: "BBGradientVC", vc: BBGradientVC()),
    Model(name: "FigmaVC", vc: FigmaVC()),
    Model(name: "TestProxyVC", vc: TestProxyVC()),
    Model(name: "HitTestVC", vc: HitTestVC()),
    Model(name: "TestLogVC", vc: TestLogVC()),
    Model(name: "RichTextVC", vc: RichTextVC()),
    Model(name: "SocketVC", vc: SocketVC()),
]

class HomeViewController: UIViewController {
    
    let tableView: UITableView = {
        let tableView = UITableView()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "苦力怕"
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
        
        self.view.backgroundColor = .white
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
    }
}


extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")!
        cell.textLabel?.text = models[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let vc = models[indexPath.row].vc
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
    }
}
