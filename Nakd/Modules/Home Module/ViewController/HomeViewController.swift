//
//  ViewController.swift
//  Nakd
//
//  Created by Ali Fayed on 01/11/2021.
//

import UIKit
import AVKit
import AVFoundation

class HomeViewController: UIViewController, AVPlayerViewControllerDelegate {
    //MARK: - Props
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var playVideoButton: UIButton!
    lazy var viewModel = HomeViewModel()
    var playerController = AVPlayerViewController()
    //MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        UIconfig ()
        tableViewConfig ()
    }
    //MARK: - UI methods
    func UIconfig () {
        playVideoButton.layer.cornerRadius = 10
        title = "Home".localized()
    }
    func tableViewConfig () {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.registerCellNib(cellClass: CategoriesTableViewCollectionCell.self)
        tableView.registerCellNib(cellClass: OthersTableViewCollectionCell.self)
    }
    @IBAction func playVideoButtonPressed(_ sender: UIButton) {
        guard let url = URL(string: Links.videoLink) else {return}
        let player = AVPlayer(url: url)
        playerController = AVPlayerViewController()
        playerController.player = player
        playerController.allowsPictureInPicturePlayback = true
        playerController.delegate = self
        playerController.player?.play()
        self.present(playerController, animated: true, completion: nil)
    }
}
//MARK: - TableView
extension HomeViewController: UITableViewDataSource, UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "Categories".localized()
        case 1:
            return "Others".localized()
        default:
            return ""
        }
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            let cell = tableView.dequeue() as CategoriesTableViewCollectionCell
            return cell
        case 1:
            let cell = tableView.dequeue() as
            OthersTableViewCollectionCell
            return cell
        default:
            return UITableViewCell()
        }
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        return IndexPath()
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        return UIView()
    }
    
}
