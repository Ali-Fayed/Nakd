//
//  FirstUnitGraphsViewController.swift
//  Nakd
//
//  Created by Ali Fayed on 02/11/2021.
//

import UIKit
import AVKit
import AVFoundation
import SafariServices
import XCoordinator

class FirstUnitGraphsViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    var router: UnownedRouter<HomeRoute>?
    var data = ["FirstGraph".localized()]
    var imageName = ["Unit1Graph1"]
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "EducationGraphs".localized()
    }
    
}
//MARK: - TableView
extension FirstUnitGraphsViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        data.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = data[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        router?.trigger(.unit1ImageView)
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        75
    }
    
}
