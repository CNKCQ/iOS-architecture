//
//  ViewController.swift
//  Todoapp
//
//  Created by KingCQ on 2017/1/19.
//  Copyright © 2017年 KingCQ. All rights reserved.
//

import UIKit
import RxSwift

class ViewController: UIViewController {
    lazy var disposeBag = DisposeBag()
    var tableView: UITableView!
    var datas: [Model] = [] {
        didSet {
            tableView.reloadData()
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView = UITableView(frame: view.bounds)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.registerReusableCell(cellType: TableViewCell.self)
        tableView.hideEmptyCells()
        let viewModel = ViewModel()
        viewModel.fetch().subscribe(onNext: { models in
            self.datas = models
        }).addDisposableTo(disposeBag)
        view.addSubview(tableView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(indexPath: indexPath, cellType: TableViewCell.self)
        cell.textLabel?.text = datas[indexPath.row].title
        return cell
    }
}

