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
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var tableView: UITableView!
    var imgArr = [  UIImage(named:"101"),
                    UIImage(named:"102") ,
                    UIImage(named:"101") ,
                    UIImage(named:"102") ,
    ]
    lazy var viewModel = HomeViewModel()
    var playerController = AVPlayerViewController()
    var timer = Timer()
    var counter = 0
    //MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        UIconfig ()
        tableViewConfig ()
        autoScrollcollectionConfig ()
    }
    //MARK: - UI methods
    func UIconfig () {
        title = "Home".localized()
    }
    func tableViewConfig () {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.registerCellNib(cellClass: CategoriesTableViewCollectionCell.self)
        tableView.registerCellNib(cellClass: OthersTableViewCollectionCell.self)
    }
    //MARK: - AutoScrollConfig
    func autoScrollcollectionConfig () {
        collectionView.delegate = self
        collectionView.dataSource = self
        pageControl.numberOfPages = imgArr.count
        pageControl.currentPage = 0
        DispatchQueue.main.async {
            self.timer = Timer.scheduledTimer(timeInterval: 3.0, target: self, selector: #selector(self.changeImage), userInfo: nil, repeats: true)
        }
    }
    @objc func changeImage() {
        if counter < imgArr.count {
            let index = IndexPath.init(item: counter, section: 0)
            self.collectionView.scrollToItem(at: index, at: .centeredHorizontally, animated: true)
            pageControl.currentPage = counter
            counter += 1
        } else {
            counter = 0
            let index = IndexPath.init(item: counter, section: 0)
            self.collectionView.scrollToItem(at: index, at: .centeredHorizontally, animated: false)
            pageControl.currentPage = counter
            counter = 1
        }
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
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {

        let myLabel = UILabel()
        myLabel.frame = CGRect(x: 65, y: 0, width: 320, height: 20)
        myLabel.font = UIFont.myBoldSystemFont(ofSize: 20)
        switch section {
        case 0:
            myLabel.text = "Categories".localized()
        case 1:
            myLabel.text = "Others".localized()
        default:
            myLabel.text = ""
        }
        let headerView = UIView()
        headerView.addSubview(myLabel)
        return headerView
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
        return 180
    }
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        return UIView()
    }
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 30
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 30
    
}
//MARK: - CollectionView
extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imgArr.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "AutoScrollCell", for: indexPath)
        if let vc = cell.viewWithTag(111) as? UIImageView {
            vc.image = imgArr[indexPath.row]
        }
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
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
//MARK: - CollectionView Layout
extension HomeViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = self.collectionView.frame.size
        return CGSize(width: size.width, height: size.height)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0.0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0.0
    }
}
