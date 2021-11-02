//
//  MoreViewController.swift
//  Nakd
//
//  Created by Ali Fayed on 01/11/2021.
//

import UIKit

class MoreViewController: UIViewController {
    //MARK: - Props
    @IBOutlet weak var tableView: UITableView!
    lazy var viewModel = MoreViewModel()
    //MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        UIconfig ()
        tableViewConfig ()
    }
    //MARK: - UI methods
    func UIconfig () {
        title = "More".localized()
    }
    func tableViewConfig () {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.registerCellNib(cellClass: MoreTableViewCell.self)
    }
}
    //MARK: - TableView
extension MoreViewController: UITableViewDataSource, UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "".localized()
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeue() as MoreTableViewCell
        cell.setData(indexPath: indexPath)
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        return IndexPath()
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        return UIView()
    }
}
