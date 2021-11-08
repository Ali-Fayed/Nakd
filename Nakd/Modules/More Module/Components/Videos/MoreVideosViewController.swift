//
//  MoreVideosViewController.swift
//  Nakd
//
//  Created by Ali Fayed on 02/11/2021.
//

import UIKit
import AVKit
import AVFoundation
import SafariServices

class MoreVideosViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    var data = ["firstVideo".localized(), "secondVideo".localized(), "thirdVideo".localized(), "fouthVideo".localized()]
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "MoreVideos".localized()
        tableView.registerCellNib(cellClass: FirstUnitVideosTableViewCell.self)
    }
    
}
//MARK: - TableView
extension MoreVideosViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        data.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeue() as FirstUnitVideosTableViewCell
        cell.textLabel?.text = data[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        if indexPath.row == 0 {
            guard let path = Bundle.main.path(forResource: "MoreVideo1", ofType:"m4v") else {
                debugPrint("FirstUnitVideo1.m4v not found")
                return
            }
            let player = AVPlayer(url: URL(fileURLWithPath: path))
            let playerController = AVPlayerViewController()
            playerController.player = player
            present(playerController, animated: true) {
                player.play()
            }
        } else if indexPath.row == 1 {
            guard let path = Bundle.main.path(forResource: "MoreVideo2", ofType:"m4v") else {
                debugPrint("FirstUnitVideo1.m4v not found")
                return
            }
            let player = AVPlayer(url: URL(fileURLWithPath: path))
            let playerController = AVPlayerViewController()
            playerController.player = player
            present(playerController, animated: true) {
                player.play()
            }
        } else if indexPath.row == 2 {
            guard let path = Bundle.main.path(forResource: "MoreVideo3", ofType:"m4v") else {
                debugPrint("FirstUnitVideo1.m4v not found")
                return
            }
            let player = AVPlayer(url: URL(fileURLWithPath: path))
            let playerController = AVPlayerViewController()
            playerController.player = player
            present(playerController, animated: true) {
                player.play()
            }
        } else if indexPath.row == 3 {
            guard let path = Bundle.main.path(forResource: "MoreVideo4", ofType:"m4v") else {
                debugPrint("FirstUnitVideo1.m4v not found")
                return
            }
            let player = AVPlayer(url: URL(fileURLWithPath: path))
            let playerController = AVPlayerViewController()
            playerController.player = player
            present(playerController, animated: true) {
                player.play()
            }
        }
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        75
    }
    
}
