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
    @IBOutlet weak var playVideoButton: UIButton!
    lazy var viewModel = HomeViewModel()
    var playerController = AVPlayerViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        playVideoButton.layer.cornerRadius = 10
        navigationItem.title = "Home".localized()
        // Do any additional setup after loading the view.
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


