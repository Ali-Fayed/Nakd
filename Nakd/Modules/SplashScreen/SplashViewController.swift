//
//  SplashViewController.swift
//  Nakd
//
//  Created by Ali Fayed on 02/11/2021.
//
import UIKit
import Lottie
import XCoordinator

class SplashViewController: UIViewController {
    @IBOutlet weak var nakdLabel: UILabel!
    @IBOutlet weak var continueButton: UIButton!
    var router: StrongRouter<AppRoute>?
    let animationView = AnimationView()
    static let animation = "robot"

    override func viewDidLoad() {
        super.viewDidLoad()
        startAnimation()
        self.nakdLabel.alpha = 0
        self.continueButton.alpha = 0
        continueButton.layer.cornerRadius = 10
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.animation ()
        }
    }
    @IBAction func continuteButtonPressed(_ sender: UIButton) {
        UIView.animate(withDuration: 1.0) {
            self.nakdLabel.transform = CGAffineTransform(translationX: 0, y: -400)
            self.continueButton.transform = CGAffineTransform(translationX: 0, y: -400)
            self.nakdLabel.alpha = 0
            self.continueButton.alpha = 0
            self.animationView.transform = CGAffineTransform(translationX: -10, y: 0)
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                UIView.animate(withDuration: 1.0) {
                    self.animationView.alpha = 0
                    self.router?.trigger(.login)
                }
            }
        }
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }
    private func startAnimation () {
        animationView.animation = Animation.named(SplashViewController.animation)
        animationView.frame = CGRect(x: -10, y: 0, width: 400, height: 400)
        animationView.center = view.center
        animationView.contentMode = .scaleAspectFit
        animationView.loopMode = .loop
        animationView.play()
        view.addSubview(animationView)
    }
    func animation () {
        UIView.animate(withDuration: 2.0) {
            self.animationView.transform = CGAffineTransform(translationX: -10, y: -150)
            self.nakdLabel.alpha = 1
            self.nakdLabel.transform = CGAffineTransform(translationX: 0, y: 240)
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                UIView.animate(withDuration: 2.0) {
                    self.continueButton.transform = CGAffineTransform(translationX: 0, y: 85)
                    self.continueButton.alpha = 1
                }
            }
        }
    
    }
}

