//
//  SecondUnitVideosViewController.swift
//  Nakd
//
//  Created by Ali Fayed on 02/11/2021.
//

import UIKit
import SafariServices

class SecondUnitVideosViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    var data = ["firstVideo".localized(), "secondVideo".localized()]
    var videosURL = ["https://www.youtube.com/watch?v=53bBL709is4", "https://www.youtube.com/watch?v=4XEmggryer0"]
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "EducationVideos".localized()
        tableView.registerCellNib(cellClass: FirstUnitVideosTableViewCell.self)
    }
    
}
//MARK: - TableView
extension SecondUnitVideosViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeue() as FirstUnitVideosTableViewCell
        cell.textLabel?.text = data[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let safariVC = SFSafariViewController(url: URL(string: videosURL[indexPath.row])!)
        self.present(safariVC, animated: true, completion: nil)
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        75
    }
    
}
